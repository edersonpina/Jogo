package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.support.v4.media.session.MediaControllerCompat;
import java.util.List;

/* compiled from: MediaControllerCompatApi21.java */
/* loaded from: /storage/emulated/0/Android/data/com.apktools.app.decompile/files/decompile_out/net.newhorizons.now/classes.dex */
class d extends MediaController.Callback {
    protected final c a;

    public d(c cVar) {
        this.a = cVar;
    }

    public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
        int i;
        c cVar = this.a;
        int playbackType = playbackInfo.getPlaybackType();
        AudioAttributes audioAttributes = playbackInfo.getAudioAttributes();
        if ((audioAttributes.getFlags() & 1) != 1) {
            if ((audioAttributes.getFlags() & 4) != 4) {
                switch (audioAttributes.getUsage()) {
                    case 1:
                    case 11:
                    case 12:
                    case 14:
                    default:
                        i = 3;
                        break;
                    case 2:
                        i = 0;
                        break;
                    case 3:
                        i = 8;
                        break;
                    case 4:
                        i = 4;
                        break;
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        i = 5;
                        break;
                    case 6:
                        i = 2;
                        break;
                    case 13:
                        i = 1;
                        break;
                }
            } else {
                i = 6;
            }
        } else {
            i = 7;
        }
        ((MediaControllerCompat.a.a) cVar).a(playbackType, i, playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
    }

    public void onExtrasChanged(Bundle bundle) {
        ((MediaControllerCompat.a.a) this.a).a(bundle);
    }

    public void onMetadataChanged(MediaMetadata mediaMetadata) {
        ((MediaControllerCompat.a.a) this.a).a(mediaMetadata);
    }

    public void onPlaybackStateChanged(PlaybackState playbackState) {
        ((MediaControllerCompat.a.a) this.a).b(playbackState);
    }

    public void onQueueChanged(List list) {
        ((MediaControllerCompat.a.a) this.a).a(list);
    }

    public void onQueueTitleChanged(CharSequence charSequence) {
        ((MediaControllerCompat.a.a) this.a).a(charSequence);
    }

    public void onSessionDestroyed() {
        ((MediaControllerCompat.a.a) this.a).a();
    }

    public void onSessionEvent(String str, Bundle bundle) {
        ((MediaControllerCompat.a.a) this.a).a(str, bundle);
    }
}
