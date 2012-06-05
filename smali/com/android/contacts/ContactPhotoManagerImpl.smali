.class Lcom/android/contacts/ContactPhotoManagerImpl;
.super Lcom/android/contacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x1b0000

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager;-><init>()V

    .line 261
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 267
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 294
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 297
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 300
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 302
    invoke-static {}, Lcom/android/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f80

    .line 304
    .local v1, cacheSizeAdjustment:F
    :goto_0
    const/high16 v3, 0x49d8

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 305
    .local v0, bitmapCacheSize:I
    new-instance v3, Lcom/android/contacts/ContactPhotoManagerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 315
    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 316
    .local v2, holderCacheSize:I
    new-instance v3, Lcom/android/contacts/ContactPhotoManagerImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/contacts/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 326
    int-to-double v3, v2

    const-wide/high16 v5, 0x3fe8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 327
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 302
    .end local v0           #bitmapCacheSize:I
    .end local v1           #cacheSizeAdjustment:F
    .end local v2           #holderCacheSize:I
    :cond_0
    const/high16 v1, 0x3f00

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPhotoManagerImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZ)V
    .locals 2
    .parameter "key"
    .parameter "bytes"
    .parameter "preloading"

    .prologue
    .line 640
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([B)V

    .line 641
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    .line 645
    if-nez p3, :cond_0

    .line 646
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method private dumpStats()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method private static inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 498
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 506
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 512
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 514
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z
    .locals 3
    .parameter "view"
    .parameter "request"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 464
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p2, p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 467
    const/4 v1, 0x0

    .line 488
    :goto_0
    return v1

    .line 470
    :cond_0
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v1, :cond_1

    .line 471
    invoke-virtual {p2, p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 472
    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 478
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 488
    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .parameter "view"
    .parameter "request"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result v0

    .line 432
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, photoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 658
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 659
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 669
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 670
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 671
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 672
    .local v2, request:Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 673
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v3, :cond_0

    .line 674
    :cond_1
    invoke-virtual {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    #getter for: Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    :cond_2
    #getter for: Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    #getter for: Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    .end local v2           #request:Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    :cond_3
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 597
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 600
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 601
    .local v1, key:Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    invoke-direct {p0, v3, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)Z

    move-result v2

    .line 602
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 603
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 607
    .end local v1           #key:Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->softenCache()V

    .line 609
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 610
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 612
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 553
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 554
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 555
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 340
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 619
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 620
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 622
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 528
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 529
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 530
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    .line 588
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 590
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 564
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 566
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 567
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 569
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 575
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 405
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p6, p1, p4, p5}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZ)V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromId(JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "defaultProvider"

    .prologue
    .line 419
    if-nez p2, :cond_0

    .line 421
    invoke-virtual {p5, p1, p3, p4}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;ZZ)V

    .line 422
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 390
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->clear()V

    .line 394
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 535
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 399
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 400
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 453
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 455
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 541
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 544
    :cond_0
    return-void
.end method
