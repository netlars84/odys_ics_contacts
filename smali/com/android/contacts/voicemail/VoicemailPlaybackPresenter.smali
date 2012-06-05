.class public Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String; = null

.field private static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final PAUSED_STATE_KEY:Ljava/lang/String; = null

.field private static final PLAYBACK_STREAM:I = 0x0

.field private static final PRESET_NAMES:[I = null

.field private static final PRESET_RATES:[F = null

.field private static final SLIDER_UPDATE_PERIOD_MILLIS:I = 0x21


# instance fields
.field private final mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private final mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

.field private final mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mPrepareTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private mRateIndex:I

.field private final mStartPlayingImmediately:Z

.field private final mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailUri:Landroid/net/Uri;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PAUSED_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 124
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    .line 128
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-void

    .line 124
    :array_0
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0xa0t 0x3ft
        0x0t 0x0t 0xc8t 0x3ft
    .end array-data

    .line 128
    :array_1
    .array-data 0x4
        0xcat 0x1t 0xbt 0x7ft
        0xcbt 0x1t 0xbt 0x7ft
        0xcct 0x1t 0xbt 0x7ft
        0xcdt 0x1t 0xbt 0x7ft
        0xcet 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;Lcom/android/ex/variablespeed/MediaPlayerProxy;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/contacts/util/AsyncTaskExecutor;Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .parameter "view"
    .parameter "player"
    .parameter "voicemailUri"
    .parameter "executorService"
    .parameter "startPlayingImmediately"
    .parameter "asyncTaskExecutor"
    .parameter "wakeLock"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 179
    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    .line 180
    iput-object p3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 181
    iput-boolean p5, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 182
    iput-object p6, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 183
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    const/16 v1, 0x21

    invoke-direct {v0, p0, p4, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 184
    iput-object p7, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mRateIndex:I

    return p1
.end method

.method static synthetic access$1500()[F
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_RATES:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PRESET_NAMES:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->changeRate(FI)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method private changeRate(FI)V
    .locals 1
    .parameter "rate"
    .parameter "stringResourceId"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->setVariableSpeed(F)V

    .line 535
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDisplay(FI)V

    .line 536
    return-void
.end method

.method private checkThatWeHaveContent()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 205
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackError(Ljava/lang/Exception;)V

    .line 482
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 483
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 484
    return-void
.end method

.method private makeRequestForContent()V
    .locals 4

    .prologue
    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 237
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "mFetchResultHandler should be null"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 238
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 239
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 240
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 242
    return-void

    .line 237
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postSuccessfulPrepareActions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPositionSeekListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setStartStopListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerphoneListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$1;)V

    invoke-interface {v0, v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->isSpeakerPhoneOn()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSpeakerPhoneOn(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateDecreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateDecreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-virtual {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->createRateIncreaseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setRateIncreaseButtonListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 350
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 352
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 353
    iget-boolean v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0, v3}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying(I)V

    .line 358
    :cond_0
    return-void
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsBuffering()V

    .line 307
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void
.end method

.method private resetPrepareStartPlaying(I)V
    .locals 4
    .parameter "clipPositionInMillis"

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->RESET_PREPARE_START_MEDIA_PLAYER:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$3;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;I)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    .line 478
    return-void
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 1
    .parameter "clipPosition"
    .parameter "duration"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->playbackStopped()V

    .line 493
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableProximitySensor()V

    .line 498
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 499
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V

    .line 502
    :cond_1
    return-void
.end method


# virtual methods
.method public createRateDecreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public createRateIncreaseListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$RateChangeListener;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Z)V

    return-object v0
.end method

.method public handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 487
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 488
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setVolumeControlStream(I)V

    .line 189
    invoke-direct {p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveContent()V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V

    .line 369
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 374
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPrepareTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 629
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 361
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->mPlayer:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->PAUSED_STATE_KEY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_0
    return-void
.end method
