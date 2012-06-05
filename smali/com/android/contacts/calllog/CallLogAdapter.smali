.class Lcom/android/contacts/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2


# instance fields
.field private final mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Ljava/lang/Thread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/contacts/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private volatile mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V
    .locals 5
    .parameter "context"
    .parameter "callFetcher"
    .parameter "contactInfoHelper"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 182
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 185
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$1;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$2;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 215
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$3;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 234
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    .line 235
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 237
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 238
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 239
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 241
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 242
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 244
    .local v0, callTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 245
    new-instance v3, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 246
    new-instance v1, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    .line 248
    .local v1, phoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;
    new-instance v3, Lcom/android/contacts/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/android/contacts/calllog/CallLogListItemHelper;-><init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    .line 251
    new-instance v3, Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogGroupBuilder;-><init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 37
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/contacts/calllog/CallLogListItemViews;

    .line 461
    .local v32, views:Lcom/android/contacts/calllog/CallLogListItemViews;
    const/16 v19, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 464
    .local v31, section:I
    if-eqz v31, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v31

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 466
    :cond_0
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v34, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v34, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-nez v31, :cond_2

    const v19, 0x7f0b01c2

    :goto_0
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 574
    :cond_1
    :goto_1
    return-void

    .line 469
    :cond_2
    const v19, 0x7f0b01c3

    goto :goto_0

    .line 477
    :cond_3
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->isLastOfSection(Landroid/database/Cursor;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x8

    :goto_2
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v34, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, number:Ljava/lang/String;
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 483
    .local v11, date:J
    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 484
    .local v13, duration:J
    const/16 v19, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 485
    .local v22, callType:I
    const/16 v19, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, countryIso:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v20

    .line 489
    .local v20, cachedContactInfo:Lcom/android/contacts/calllog/ContactInfo;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v34

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-wide/from16 v2, v35

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    const/16 v19, 0x4

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 494
    const/16 v19, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 495
    .local v33, voicemailUri:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 496
    .local v29, rowId:J
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-wide/from16 v0, v29

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 508
    .end local v29           #rowId:J
    .end local v33           #voicemailUri:Ljava/lang/String;
    :goto_3
    new-instance v26, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v8}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v26, numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v21

    .line 511
    .local v21, cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    if-nez v21, :cond_9

    const/16 v23, 0x0

    .line 512
    .local v23, info:Lcom/android/contacts/calllog/ContactInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 516
    :cond_4
    sget-object v23, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .line 544
    :cond_5
    :goto_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 545
    .local v18, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 546
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move/from16 v16, v0

    .line 547
    .local v16, ntype:I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 548
    .local v17, label:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    move-wide/from16 v27, v0

    .line 549
    .local v27, photoId:J
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 550
    .local v7, formattedNumber:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v10

    .line 551
    .local v10, callTypes:[I
    const/16 v19, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 553
    .local v9, geocode:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 554
    new-instance v5, Lcom/android/contacts/PhoneCallDetails;

    invoke-direct/range {v5 .. v14}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJ)V

    .line 562
    .local v5, details:Lcom/android/contacts/PhoneCallDetails;
    :goto_6
    const/16 v19, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-nez v19, :cond_f

    const/16 v25, 0x1

    .line 564
    .local v25, isNew:Z
    :goto_7
    move/from16 v24, v25

    .line 565
    .local v24, isHighlighted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/contacts/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;Z)V

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v27

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/calllog/CallLogAdapter;->setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 570
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/calllog/CallLogAdapter;->mFirst:Z

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_1

    .line 478
    .end local v5           #details:Lcom/android/contacts/PhoneCallDetails;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #formattedNumber:Ljava/lang/CharSequence;
    .end local v8           #countryIso:Ljava/lang/String;
    .end local v9           #geocode:Ljava/lang/String;
    .end local v10           #callTypes:[I
    .end local v11           #date:J
    .end local v13           #duration:J
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #ntype:I
    .end local v17           #label:Ljava/lang/String;
    .end local v18           #lookupUri:Landroid/net/Uri;
    .end local v20           #cachedContactInfo:Lcom/android/contacts/calllog/ContactInfo;
    .end local v21           #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .end local v22           #callType:I
    .end local v23           #info:Lcom/android/contacts/calllog/ContactInfo;
    .end local v24           #isHighlighted:Z
    .end local v25           #isNew:Z
    .end local v26           #numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    .end local v27           #photoId:J
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 498
    .restart local v6       #number:Ljava/lang/String;
    .restart local v8       #countryIso:Ljava/lang/String;
    .restart local v11       #date:J
    .restart local v13       #duration:J
    .restart local v20       #cachedContactInfo:Lcom/android/contacts/calllog/ContactInfo;
    .restart local v22       #callType:I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 500
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-static {v6}, Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 504
    :cond_8
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 511
    .restart local v21       #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .restart local v26       #numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_9
    invoke-interface/range {v21 .. v21}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v23, v19

    goto/16 :goto_4

    .line 517
    .restart local v23       #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_a
    if-nez v21, :cond_b

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v19, v0

    sget-object v34, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 520
    move-object/from16 v23, v20

    .line 523
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v8, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Z)V

    goto/16 :goto_5

    .line 526
    :cond_b
    invoke-interface/range {v21 .. v21}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 529
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v8, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Z)V

    .line 538
    :cond_c
    :goto_8
    sget-object v19, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 540
    move-object/from16 v23, v20

    goto/16 :goto_5

    .line 530
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 535
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v8, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Z)V

    goto :goto_8

    .line 558
    .restart local v7       #formattedNumber:Ljava/lang/CharSequence;
    .restart local v9       #geocode:Ljava/lang/String;
    .restart local v10       #callTypes:[I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #ntype:I
    .restart local v17       #label:Ljava/lang/String;
    .restart local v18       #lookupUri:Landroid/net/Uri;
    .restart local v27       #photoId:J
    :cond_e
    new-instance v5, Lcom/android/contacts/PhoneCallDetails;

    const/16 v19, 0x0

    invoke-direct/range {v5 .. v19}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v5       #details:Lcom/android/contacts/PhoneCallDetails;
    goto/16 :goto_6

    .line 562
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_7
.end method

.method private callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z
    .locals 2
    .parameter "callLogInfo"
    .parameter "info"

    .prologue
    .line 590
    iget-object v0, p1, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 446
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/contacts/calllog/CallLogListItemViews;

    move-result-object v0

    .line 447
    .local v0, views:Lcom/android/contacts/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v1, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .parameter "cursor"
    .parameter "count"

    .prologue
    .line 688
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 689
    .local v2, position:I
    new-array v0, p2, [I

    .line 690
    .local v0, callTypes:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 691
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 692
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 695
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .parameter "c"

    .prologue
    .line 666
    new-instance v0, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 667
    .local v0, info:Lcom/android/contacts/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 668
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 669
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 670
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 671
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, matchedNumber:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #matchedNumber:Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 673
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 674
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 675
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 676
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 677
    return-object v0
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x1

    .line 578
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v2

    .line 579
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 580
    .local v1, section:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 582
    .local v0, nextSection:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 583
    if-ne v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)Z
    .locals 5
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v4, p1, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 346
    .local v1, info:Lcom/android/contacts/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 362
    :goto_0
    return v3

    .line 353
    :cond_0
    new-instance v2, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v2, numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v4, v2}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/ContactInfo;

    .line 355
    .local v0, existingInfo:Lcom/android/contacts/calllog/ContactInfo;
    invoke-virtual {v1, v0}, Lcom/android/contacts/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 358
    .local v3, updated:Z
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v4, v2, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/contacts/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;)V
    .locals 6
    .parameter "views"
    .parameter "photoId"
    .parameter "contactUri"

    .prologue
    .line 699
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 700
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    .line 701
    return-void
.end method

.method private startRequestProcessing()V
    .locals 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mDone:Z

    .line 282
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CallLogContactLookup"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 283
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 284
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 8
    .parameter "number"
    .parameter "countryIso"
    .parameter "updatedInfo"
    .parameter "callLogInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 598
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 601
    .local v0, needsUpdate:Z
    if-eqz p4, :cond_8

    .line 602
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x1

    .line 607
    :cond_0
    iget v2, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 608
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 609
    const/4 v0, 0x1

    .line 612
    :cond_1
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 613
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x1

    .line 616
    :cond_2
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 617
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x1

    .line 620
    :cond_3
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 621
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v0, 0x1

    .line 624
    :cond_4
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 625
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x1

    .line 628
    :cond_5
    iget-wide v2, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 629
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    const/4 v0, 0x1

    .line 632
    :cond_6
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 633
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x1

    .line 649
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 662
    :goto_1
    return-void

    .line 638
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    :cond_9
    if-nez p2, :cond_a

    .line 654
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 658
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .parameter "cursorPosition"
    .parameter "size"
    .parameter "expanded"

    .prologue
    .line 722
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 723
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 399
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 427
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"

    .prologue
    .line 441
    invoke-direct {p0, p1, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 442
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 413
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 712
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Z)V
    .locals 3
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"
    .parameter "immediate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)V

    .line 320
    .local v0, request:Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 325
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 328
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mFirst:Z

    .line 330
    :cond_1
    return-void

    .line 325
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 735
    const/4 v7, 0x0

    .line 737
    .local v7, matchingNumber:Ljava/lang/String;
    new-instance v8, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v8, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .local v8, numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, v8}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/calllog/ContactInfo;

    .line 739
    .local v6, ci:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v6, v0, :cond_3

    .line 740
    iget-object v7, v6, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 756
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 759
    :cond_1
    move-object p1, v7

    .line 761
    :cond_2
    return-object p1

    .line 743
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 746
    .local v9, phonesCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 747
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 748
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 750
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    .end local v9           #phonesCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 2
    .parameter "number"
    .parameter "countryIso"
    .parameter "contactInfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .local v0, numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 718
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 305
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 417
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 419
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 421
    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 431
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 433
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 435
    return-object v1
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 403
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 405
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 406
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 407
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 260
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mFirst:Z

    .line 212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, needNotify:Z
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mDone:Z

    if-nez v4, :cond_3

    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, request:Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v5

    .line 374
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    move-object v3, v0

    .line 388
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mDone:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/contacts/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    const/4 v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    if-eqz v2, :cond_2

    .line 378
    const/4 v2, 0x0

    .line 379
    :try_start_1
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v1

    .line 385
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 388
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 394
    .end local v3           #request:Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    :cond_3
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 264
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mDone:Z

    .line 298
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 299
    :cond_0
    return-void
.end method
