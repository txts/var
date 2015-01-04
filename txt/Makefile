Packages=pandoc ispell emacs-goodies-el enscript 
Html=. 
Tmp=/tmp/$(USER) 

src/md/%.md : src/py/%.py
	@awk -f etc/py2md.awk $< > $@
	@echo  $@

%.html : src/md/%.md
	pandoc -s -S --toc  \
	    --highlight-style=pygments \
            -M etc/style.css \
	    --template=etc/templates/default.html \
	    -A etc/footer.html  -o $@ $<

all : mds htmls

mds  : $(shell bash etc/stems src/py py src/md md) 
htmls: $(shell bash etc/stems src/md md . html)  

install: $(Html)/robots.txt
	sudo apt-get -qq install $(Packages)
	mkdir -p src/md src/py src/md etc  
	mkdir -p $(Html)/img/ $(Html)/img/pdf 
	mkdir -p $(Tmp)

$(Html)/robots.txt:
	@echo "User-agent: *"> $@
	@echo "Disallow: /src">> $@
	@echo "Disallow: /etc">> $@
	@echo "Disallow: /old">> $@ 
	@ls $@ 


typo:
	- git status
	- git commit -am "typo"
	- git push origin master

commit:
	- git status
	- git commit -a
	- git push origin master

update:
	- git pull origin master

status:
	- git status
