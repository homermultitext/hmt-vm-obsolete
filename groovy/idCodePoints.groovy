
if (args.length != 1) {
  println "Usage:  groovy idChars.groovy <FILENAME>"
  System.exit(1)
}


File f = new File(args[0])
StringBuffer strBuff
try { 
  strBuff   = new StringBuffer(f.getText("UTF-8"))
} catch (Exception e) {
  println("Couldn't get text of ${f}. "  + e.getMessage())
}


println "\nchar = dec. / hex."
println "-------------------"
int max = strBuff.codePointCount(0, strBuff.length() - 1)
for (cpCount in 0..max) {
  Integer codept = strBuff.codePointAt(cpCount)
  String s =  new String(Character.toChars(codept))

  if (codept == 10) {
    println "<nl> = " + codept + " / " + Integer.toHexString(codept)
  } else {
    println s + "    = " + codept + " / " + Integer.toHexString(codept)
  }
}

