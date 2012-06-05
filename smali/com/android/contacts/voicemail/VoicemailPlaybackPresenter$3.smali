.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;
.super Landroid/os/AsyncTask;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

.field final synthetic val$clipPositionInMillis:I


# direct methods
.method constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    iput p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->val$clipPositionInMillis:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 4
    .parameter "params"

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->reset()V

    .line 445
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDataSourceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 446
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setAudioStreamType(I)V

    .line 447
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return-object v0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 440
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Exception;)V
    .locals 4
    .parameter "exception"

    .prologue
    .line 456
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    const/4 v2, 0x0

    #setter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1802(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 457
    if-nez p1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 459
    iget v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->val$clipPositionInMillis:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 461
    .local v0, startPosition:I
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 462
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->seekTo(I)V

    .line 463
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->start()V

    .line 464
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStarted()V

    .line 465
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableProximitySensor()V

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
    invoke-static {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$2100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #getter for: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->startUpdating(II)V

    .line 476
    .end local v0           #startPosition:I
    :goto_0
    return-void

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    #calls: Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V
    invoke-static {v1, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$1300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 440
    check-cast p1, Ljava/lang/Exception;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
