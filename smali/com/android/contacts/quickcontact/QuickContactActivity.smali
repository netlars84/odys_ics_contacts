.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final HANDLER_ID_DATA:I = 0x1

.field private static final LEADING_MIMETYPES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final TAG:Ljava/lang/String; = "QuickContact"

.field private static final TRACE_LAUNCH:Z = false

.field private static final TRACE_TAG:Ljava/lang/String; = "quickcontact"

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasFinishedAnimatingIn:Z

.field private mHasStartedAnimatingOut:Z

.field private mLineAfterTrack:Landroid/view/View;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLookupUri:Landroid/net/Uri;

.field private mOpenDetailsButton:Landroid/widget/ImageButton;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPhotoContainer:Landroid/view/View;

.field private final mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 147
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 105
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 271
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 578
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 626
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 657
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private bindData(Landroid/database/Cursor;)V
    .locals 42
    .parameter "cursor"

    .prologue
    .line 374
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v21

    .line 375
    .local v21, cache:Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v4, p0

    .line 377
    .local v4, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    const-string v9, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 382
    new-instance v40, Lcom/android/contacts/util/DataStatus;

    invoke-direct/range {v40 .. v40}, Lcom/android/contacts/util/DataStatus;-><init>()V

    .line 383
    .local v40, status:Lcom/android/contacts/util/DataStatus;
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v17

    .line 385
    .local v17, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v10, 0x7f06004e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/ImageView;

    .line 387
    .local v39, photoView:Landroid/widget/ImageView;
    const/16 v36, 0x0

    .line 388
    .local v36, photoBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 390
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/DataStatus;->possibleUpdate(Landroid/database/Cursor;)V

    .line 392
    const/16 v9, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 397
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 398
    .local v7, dataId:J
    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 399
    .local v16, accountType:Ljava/lang/String;
    const/4 v9, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 400
    .local v23, dataSet:Ljava/lang/String;
    const/16 v9, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    const/16 v32, 0x1

    .line 401
    .local v32, isPrimary:Z
    :goto_2
    const/16 v9, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_4

    const/16 v33, 0x1

    .line 404
    .local v33, isSuperPrimary:Z
    :goto_3
    const-string v9, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 405
    const-string v9, "data14"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 406
    .local v24, displayPhotoColumnIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_5

    const/16 v29, 0x1

    .line 407
    .local v29, hasDisplayPhoto:Z
    :goto_4
    if-eqz v29, :cond_1

    .line 408
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 409
    .local v25, displayPhotoId:J
    sget-object v9, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 412
    .local v27, displayPhotoUri:Landroid/net/Uri;
    new-instance v10, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v39

    invoke-direct {v10, v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;Landroid/widget/ImageView;)V

    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Void;

    invoke-virtual {v10, v11, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 433
    .end local v25           #displayPhotoId:J
    .end local v27           #displayPhotoUri:Landroid/net/Uri;
    :cond_1
    const-string v9, "data15"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 434
    .local v38, photoColumnIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v37

    .line 435
    .local v37, photoBlob:[B
    if-eqz v37, :cond_0

    .line 436
    const/4 v9, 0x0

    move-object/from16 v0, v37

    array-length v10, v0

    move-object/from16 v0, v37

    invoke-static {v0, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v36

    goto/16 :goto_1

    .line 377
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v7           #dataId:J
    .end local v16           #accountType:Ljava/lang/String;
    .end local v17           #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .end local v23           #dataSet:Ljava/lang/String;
    .end local v24           #displayPhotoColumnIndex:I
    .end local v29           #hasDisplayPhoto:Z
    .end local v32           #isPrimary:Z
    .end local v33           #isSuperPrimary:Z
    .end local v36           #photoBitmap:Landroid/graphics/Bitmap;
    .end local v37           #photoBlob:[B
    .end local v38           #photoColumnIndex:I
    .end local v39           #photoView:Landroid/widget/ImageView;
    .end local v40           #status:Lcom/android/contacts/util/DataStatus;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 400
    .restart local v5       #mimeType:Ljava/lang/String;
    .restart local v7       #dataId:J
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v17       #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .restart local v23       #dataSet:Ljava/lang/String;
    .restart local v36       #photoBitmap:Landroid/graphics/Bitmap;
    .restart local v39       #photoView:Landroid/widget/ImageView;
    .restart local v40       #status:Lcom/android/contacts/util/DataStatus;
    :cond_3
    const/16 v32, 0x0

    goto :goto_2

    .line 401
    .restart local v32       #isPrimary:Z
    :cond_4
    const/16 v33, 0x0

    goto :goto_3

    .line 406
    .restart local v24       #displayPhotoColumnIndex:I
    .restart local v33       #isSuperPrimary:Z
    :cond_5
    const/16 v29, 0x0

    goto :goto_4

    .line 441
    .end local v24           #displayPhotoColumnIndex:I
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 443
    .local v6, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v6, :cond_8

    .line 447
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 448
    .local v3, action:Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    move-result v41

    .line 449
    .local v41, wasAdded:Z
    if-eqz v41, :cond_8

    .line 451
    if-nez v33, :cond_7

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    .line 452
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v3           #action:Lcom/android/contacts/quickcontact/Action;
    .end local v41           #wasAdded:Z
    :cond_8
    const/16 v9, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_9

    const/16 v30, 0x1

    .line 459
    .local v30, hasPresence:Z
    :goto_5
    if-eqz v30, :cond_0

    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 460
    const-string v9, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v12

    .line 462
    .local v12, imKind:Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_0

    .line 463
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v11, "vnd.android.cursor.item/im"

    move-object v9, v3

    move-object v10, v4

    move-wide v13, v7

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V

    .line 465
    .local v3, action:Lcom/android/contacts/quickcontact/DataAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z

    goto/16 :goto_1

    .line 458
    .end local v3           #action:Lcom/android/contacts/quickcontact/DataAction;
    .end local v12           #imKind:Lcom/android/contacts/model/DataKind;
    .end local v30           #hasPresence:Z
    :cond_9
    const/16 v30, 0x0

    goto :goto_5

    .line 471
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #kind:Lcom/android/contacts/model/DataKind;
    .end local v7           #dataId:J
    .end local v16           #accountType:Ljava/lang/String;
    .end local v23           #dataSet:Ljava/lang/String;
    .end local v32           #isPrimary:Z
    .end local v33           #isSuperPrimary:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v9}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 472
    .local v18, actionChildren:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_6

    .line 475
    .end local v18           #actionChildren:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 477
    const/4 v9, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 478
    .local v35, name:Ljava/lang/String;
    const v9, 0x7f060041

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v9, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 481
    .end local v35           #name:Ljava/lang/String;
    :cond_c
    if-eqz v39, :cond_d

    .line 483
    if-eqz v36, :cond_f

    .line 484
    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    :cond_d
    :goto_7
    new-instance v22, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v9}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 492
    .local v22, containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 494
    sget-object v9, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_e
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 495
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 496
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 486
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v22           #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZ)I

    move-result v9

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 502
    .restart local v22       #containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    .local v20, arr$:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    .local v34, len$:I
    const/16 v31, 0x0

    .local v31, i$:I
    :goto_9
    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    aget-object v5, v20, v31

    .line 503
    .restart local v5       #mimeType:Ljava/lang/String;
    sget-object v9, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 504
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    :cond_11
    add-int/lit8 v31, v31, 0x1

    goto :goto_9

    .line 510
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_12
    sget-object v9, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :cond_13
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 511
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 512
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 518
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_b
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 519
    .restart local v5       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 520
    .local v19, actionView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 523
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v19           #actionView:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    const/16 v28, 0x1

    .line 524
    .local v28, hasData:Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v28, :cond_17

    const/4 v9, 0x0

    :goto_d
    invoke-virtual {v10, v9}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v28, :cond_18

    const/4 v9, 0x0

    :goto_e
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v28, :cond_19

    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v28, :cond_1a

    const/4 v9, 0x0

    :goto_10
    invoke-virtual {v10, v9}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 528
    return-void

    .line 523
    .end local v28           #hasData:Z
    :cond_16
    const/16 v28, 0x0

    goto :goto_c

    .line 524
    .restart local v28       #hasData:Z
    :cond_17
    const/16 v9, 0x8

    goto :goto_d

    .line 525
    :cond_18
    const/16 v9, 0x8

    goto :goto_e

    .line 526
    :cond_19
    const/16 v9, 0x8

    goto :goto_f

    .line 527
    :cond_1a
    const/16 v9, 0x8

    goto :goto_10
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;)Z
    .locals 2
    .parameter "action"
    .parameter "resolveCache"

    .prologue
    .line 537
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    .line 539
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .parameter "position"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    return-object v0
.end method

.method private handleOutsideTouch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 241
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    if-nez v2, :cond_0

    .line 244
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasStartedAnimatingOut:Z

    .line 245
    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    move v0, v1

    .line 246
    goto :goto_0
.end method

.method private hide(Z)V
    .locals 2
    .parameter "withAnimation"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideChild(Ljava/lang/Runnable;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "mimeType"
    .parameter "resolveCache"
    .parameter "root"

    .prologue
    const/4 v7, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04007c

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 552
    .local v4, typeView:Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 553
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v4, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    .line 554
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 557
    .local v2, firstInfo:Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 558
    .local v1, descrip:Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 559
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 560
    invoke-virtual {v4, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v4, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    return-object v4
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 361
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v4

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 363
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    const/4 v4, 0x1

    goto :goto_0

    .line 362
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setHeaderImage(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 351
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    if-nez p2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_0
    return-void

    .line 352
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 314
    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    return-void
.end method

.method private setHeaderText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 332
    invoke-virtual {p0, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderText(ILjava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method private setHeaderText(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 342
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private show()V
    .locals 13

    .prologue
    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 206
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 209
    .local v2, lookupUri:Landroid/net/Uri;
    const-string v0, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 211
    .local v9, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 215
    .end local v9           #rawContactId:J
    :cond_0
    const-string v0, "missing lookupUri"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 218
    invoke-virtual {v8}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 219
    .local v11, targetScreen:Landroid/graphics/Rect;
    const-string v0, "missing targetScreen"

    invoke-static {v11, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0, v11}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 222
    const-string v0, "exclude_mimes"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 225
    const v0, 0x7f060108

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 226
    const v0, 0x7f060041

    const v4, 0x7f0b00f5

    invoke-direct {p0, v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 230
    const-string v0, "data"

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, dataUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 235
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "mimetype!=? OR (mimetype=? AND _id=photo_id)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "vnd.android.cursor.item/photo"

    aput-object v12, v6, v7

    const-string v7, "vnd.android.cursor.item/photo"

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 573
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 574
    .local v0, listFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 575
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->hide(Z)V

    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/high16 v2, 0x2

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 161
    const v1, 0x7f040074

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    .line 163
    const v1, 0x7f060105

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 164
    const v1, 0x7f06010a

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 165
    const v1, 0x7f060109

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 166
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    .line 167
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 168
    const v1, 0x7f060107

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 169
    const v1, 0x7f06010b

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 170
    const v1, 0x7f060106

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 172
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 179
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 188
    .local v0, openDetailsClickHandler:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 191
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 193
    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQueryListener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 195
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->show()V

    .line 196
    return-void
.end method
