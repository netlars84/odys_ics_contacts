.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$ViewEntry;,
        Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/contacts/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x0

.field static final DURATION_COLUMN_INDEX:I = 0x1

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_VOICEMAIL_START_PLAYBACK:Ljava/lang/String; = "EXTRA_VOICEMAIL_START_PLAYBACK"

.field public static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "EXTRA_VOICEMAIL_URI"

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x5

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "CallDetail"


# instance fields
.field private mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasTrashOption:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    .line 200
    new-instance v0, Lcom/android/contacts/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$1;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/android/contacts/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$2;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 608
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 795
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 796
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 798
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 9
    .parameter "entry"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 642
    const v6, 0x7f060030

    invoke-virtual {p0, v6}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 643
    .local v0, convertView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 645
    const v6, 0x7f060035

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 646
    .local v2, icon:Landroid/widget/ImageView;
    const v6, 0x7f060034

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 647
    .local v1, divider:Landroid/view/View;
    const v6, 0x7f060032

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 649
    .local v5, text:Landroid/widget/TextView;
    const v6, 0x7f060031

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 650
    .local v4, mainAction:Landroid/view/View;
    iget-object v6, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 652
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 655
    iget-object v6, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 659
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :goto_0
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    const v6, 0x7f060033

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 668
    .local v3, label:Landroid/widget/TextView;
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 669
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    :goto_1
    return-void

    .line 662
    .end local v3           #label:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 671
    .restart local v3       #label:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    .line 637
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    return-void
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 314
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 316
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 323
    :cond_0
    return-object v3

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 319
    .local v0, ids:[J
    array-length v4, v0

    new-array v3, v4, [Landroid/net/Uri;

    .line 320
    .local v3, uris:[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 321
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 21
    .parameter "callUri"

    .prologue
    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 546
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 548
    .local v17, callCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot find content: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_1

    .line 598
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 553
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 555
    .local v8, date:J
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 556
    .local v10, duration:J
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 557
    .local v18, callType:I
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 558
    .local v5, countryIso:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 560
    .local v6, geocode:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 573
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v2, v3, v5}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v19

    .line 578
    .local v19, info:Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v19, :cond_6

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 580
    .local v4, formattedNumber:Ljava/lang/CharSequence;
    const-string v12, ""

    .line 581
    .local v12, nameText:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 582
    .local v13, numberType:I
    const-string v14, ""

    .line 583
    .local v14, numberLabel:Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 584
    .local v16, photoUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 593
    .local v15, lookupUri:Landroid/net/Uri;
    :goto_1
    new-instance v2, Lcom/android/contacts/PhoneCallDetails;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v20, 0x0

    aput v18, v7, v20

    invoke-direct/range {v2 .. v16}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    if-eqz v17, :cond_4

    .line 598
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    .line 573
    .end local v4           #formattedNumber:Ljava/lang/CharSequence;
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v13           #numberType:I
    .end local v14           #numberLabel:Ljava/lang/CharSequence;
    .end local v15           #lookupUri:Landroid/net/Uri;
    .end local v16           #photoUri:Landroid/net/Uri;
    .end local v19           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_5
    const/16 v19, 0x0

    goto :goto_0

    .line 586
    .restart local v19       #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_6
    :try_start_2
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 587
    .restart local v4       #formattedNumber:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 588
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 589
    .restart local v13       #numberType:I
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 590
    .restart local v14       #numberLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 591
    .restart local v16       #photoUri:Landroid/net/Uri;
    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v15       #lookupUri:Landroid/net/Uri;
    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .parameter "statusCursor"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 706
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 707
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 708
    const/4 v1, 0x0

    .line 716
    :goto_0
    return-object v1

    .line 712
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 713
    const-string v1, "CallDetail"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 3
    .parameter "photoUri"

    .prologue
    const/4 v2, 0x1

    .line 605
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V

    .line 606
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .parameter "voicemailUri"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$3;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 804
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->finish()V

    .line 807
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f06002e

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 259
    invoke-virtual {p0, v6}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 260
    .local v2, voicemailContainer:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 265
    .local v1, playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, fragmentArguments:Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 274
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 275
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 281
    .end local v0           #fragmentArguments:Landroid/os/Bundle;
    .end local v1           #playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 541
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 825
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 820
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->setContentView(I)V

    .line 220
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 221
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 224
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 225
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 226
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 228
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 229
    new-instance v0, Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivityQueryHandler;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    .line 230
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 232
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 233
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 235
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 236
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 237
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 238
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 239
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 240
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 241
    new-instance v0, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 242
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->configureActionBar()V

    .line 243
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 722
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 331
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 333
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    const/4 v2, 0x1

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 4
    .parameter "menuItem"

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 737
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 739
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->onHomeSelected()V

    .line 740
    const/4 v0, 0x1

    return v0

    .line 737
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .parameter "menuItem"

    .prologue
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v1, callIds:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, arr$:[Landroid/net/Uri;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 752
    .local v2, callUri:Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 753
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    .end local v2           #callUri:Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/contacts/CallDetailActivity$5;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/CallDetailActivity$5;-><init>(Lcom/android/contacts/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 771
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 779
    .local v0, voicemailUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/contacts/CallDetailActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/CallDetailActivity$6;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 791
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->disableProximitySensor(Z)V

    .line 813
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 814
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 815
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 729
    const v0, 0x7f060138

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 730
    const v0, 0x7f060139

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 731
    const v0, 0x7f060137

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 732
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 249
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 250
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .parameter "statusCursor"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 677
    if-nez p1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 682
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 689
    iget v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 690
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 692
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 693
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 694
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/CallDetailActivity$4;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 701
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
