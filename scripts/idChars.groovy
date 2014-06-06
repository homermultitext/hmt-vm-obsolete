import java.io.*
import java.util.*

/*
*/


if (args.length != 1) {
println "Usage:  groovy idChars.groovy <FILENAME>"
System.exit(1)
}
def fName = args[0]

StringBuffer strBuff = new StringBuffer()

try { 
FileInputStream f = new FileInputStream(fName)
InputStreamReader isr = new InputStreamReader(f,"UTF8")
Reader inputReader = new BufferedReader(isr)
int ch
while ((ch = inputReader.read()) > -1) {
      strBuff.append((char) ch);
}
inputReader.close()

} catch (Exception e) {
println("Reading didn't work. "  + e.getMessage())
}

OutputStreamWriter out = new OutputStreamWriter(System.out, "UTF-8")

// standard loop for cycling through code points in a StringBuffer:
int max = strBuff.codePointCount(0, strBuff.length() - 1)
println "Number code points in input = " + max

int idx = 0

out.write "codept\thex\tstring\n"
int codePoint = strBuff.codePointAt(idx)
def s =  new String(Character.toChars(codePoint))
out.write codePoint + "\t(" +Integer.toHexString(codePoint) +")\t" + s + "\n"

while (idx < max) {
      codePoint = strBuff.codePointAt(idx)
  if (getFollowingCP(idx, strBuff) != null) {
     int followingCodePoint = getFollowingCP(idx,strBuff)
      s =  new String(Character.toChars(followingCodePoint))
      out.write followingCodePoint + "\t(" +Integer.toHexString(followingCodePoint) +")\t" + s  
      if (Character.isUpperCase(followingCodePoint)) {
      out.write " (upper case)"
      }
      out.write "\n"
      
  }
  idx = strBuff.offsetByCodePoints(idx,1)	
}

out.close()


/*
	peek ahead for next code point
*/
def getFollowingCP(int i, StringBuffer buff) {
    int nextIdx = buff.offsetByCodePoints(i,1)	
    int cp = buff.codePointAt(nextIdx)
    return(cp)
}
