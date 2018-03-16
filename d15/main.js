const body = document.body;

class Classic {
    constructor(art_url = "https://upload.wikimedia.org/wikipedia/commons/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg") {
        this.frame = "black-border";
        this.art_url = art_url;
    }

    render()  {
        let image = document.createElement("img");
        image.className = this.frame;
        image.src = this.art_url;
        body.appendChild(image);
        console.log('This is from the classic')
    }
}

class Meme extends Classic {
    constructor(art_url){
        super(art_url);
        
    }

    render(){
        super.render()

    }
}

let art1 = new Classic("http://simpleabstract.com/assets/images/Oil-On-Canvas-Abstract-Art.jpg")
art1.render()

let meme1 = new Meme("http://i0.kym-cdn.com/entries/icons/original/000/022/940/spongebobicon.jpg")
meme1.render()