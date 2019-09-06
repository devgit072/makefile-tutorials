<h4>What is make and Makefiles?</h4> 
It is utility to build application not just Golang, but for other language as well. Slightly similar to 
pom.xml.
*make* is command which will seek Makefile</br>  
In Makefile, we have to mention target and instruction inside that target.</br>  
For Example: In Makefile, we can create target run and the instruction can be <code>go run gofile.go</code>.</br>
Inside Makefile, we can create many target and later we can specify which target to build.  
</br>
Lets create a simple Makefile: </br>  

```
   hello:
   	echo "Hello"
   
   build:
   	go build -o ~/go/bin/simpleApp go-applications/simpleApp.go
   
   run:
   	go run go-applications/simpleApp.go
   
   compile:
   	echo "Compiling for every OS and Platform"
   	GOOS=linux GOARCH=arm go build -o ~/go/bin/simpleApp-linux-arm go-applications/simpleApp.go
   	GOOS=linux GOARCH=arm64 go build -o ~/go/bin/simpleApp-linux-arm64 go-applications/simpleApp.go
   	GOOS=freebsd GOARCH=386 go build -o ~/go/bin/simpleApp-freebsd-386 go-applications/simpleApp.go
```

You can run using command: <code>make run</code>, then target <code>run</code> will be picked and corresponding 
instruction will be executed. So this is simplest example.But it can be much more complex in real projects      </br>
Remember that Makefile should be present in directory, else make command will throw error that no rule exists.</br>
So basically Make is in format of
```
target1:
	instruction1
target2:
	instruction2
and so on...
```
