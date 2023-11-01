// Interface Segregation Principle
package SDP;

// Interface for media player controls
interface MediaPlayer {
    void play();
    void pause();
    void stop();
}

// Interface for music-related behaviors like country, pop, rock, etc
interface MusicPlayer {
    void playMusic(String genre);
}

// Interface for person-related behaviors
interface Singer {
    void sing();
    void practice();
}

// Class for a person who likes country music
class CountryMusicLover implements MusicPlayer, Singer {
    @Override
    public void playMusic(String genre) {
        System.out.println("Playing " + genre + " music");
    }

    @Override
    public void sing() {
        System.out.println("Singing country songs");
    }

    @Override
    public void practice() {
        System.out.println("Practicing singing");
    }
}

// Class for a person who uses a media player
class MediaUser implements MediaPlayer {
    @Override
    public void play() {
        System.out.println("Playing media");
    }

    @Override
    public void pause() {
        System.out.println("Pausing media");
    }

    @Override
    public void stop() {
        System.out.println("Stopping media");
    }
}

