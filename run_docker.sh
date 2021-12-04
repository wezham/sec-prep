docker run -d \
	--rm \
	-h practice_pwn \
	--name practice_pwn \
	-v $(pwd):/ctf/work \
	-p 23946:23946 \
	--cap-add=SYS_PTRACE \
	skysider/pwndocker

docker exec -it practice_pwn /bin/bash