writecn.delim<-function(db,file = "",row.names = FALSE, quote = FALSE, sep = "\t", ...){
  #remember the original locale.
  original.locale <- Sys.getlocale(category="LC_CTYPE")
  #for Windows set locale to Chinese. Otherwise set locale to UTF-8
  new.locale <- ifelse(.Platform$OS.type=="windows", "Chinese", "en_US.UTF-8")
  Sys.setlocale("LC_CTYPE", new.locale) 
  write.table(db, file, row.names = row.names, quote = quote, sep = sep, fileEncoding="UTF-8",...)
  tmp<-Sys.setlocale("LC_CTYPE", original.locale)
}
