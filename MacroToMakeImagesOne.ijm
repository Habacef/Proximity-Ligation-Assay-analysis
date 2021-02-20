inputDir = getDirectory("choose the input directory");
ImgList = getFileList(inputDir); 
	for (e=0; e<ImgList.length; e++) {
    	file = inputDir + ImgList[e];
    	splitDir= inputDir + "/"+e+"/";
    	File.makeDirectory(splitDir);
			list = getFileList(file); 
			for ( i=0; i<list.length; i++ ) { 
			m=".tif"; 
			a=0;
			print(list[i]);
			mIndex = indexOf(list[i],m); 
			print(mIndex);
			if (mIndex > 0) {
					print(file + list[i]);
					open(file + list[i] ); 
    				
			}
	//		open(file);
			//isOpen("Title")
			mIndex=0;
			
		}
		fuseImage();
		
	}
var a= 0;
var b= 0;
function fuseImage(){
	name = getTitle();
	u="_ch0"; 
	uIndex = indexOf(name,u); 
	if (uIndex<0) exit("Error: Directory name does not contain "+u); 
	a=substring (name,uIndex); 
	b=substring(name, 0, uIndex);
	print(b);

	run("Merge Channels...", "c1="+b +"_ch02.tif c2="+ b +"_ch01.tif c3="+ b +"_ch00.tif create");
	selectWindow("Composite");
	saveAs("TIFF", splitDir + b+".tif");
	
	//run("Close");
	//run("Close");
	//run("Close");
}
