.class public Lcom/android/contacts/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/contacts/dialpad/DialpadFragment$Listener;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x3

.field private static final EMPTY_NUMBER:Ljava/lang/String; = ""

.field static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50


# instance fields
.field private mAdditionalButtonsRow:Landroid/view/View;

.field mCallLog:Lcom/android/phone/CallLogAsync;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mHaptic:Lcom/android/phone/HapticFeedback;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSearchButton:Landroid/view/View;

.field private mShowOptionsMenu:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/android/phone/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/phone/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    .line 166
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialpad/DialpadFragment$1;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1076
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/DialpadFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/dialpad/DialpadFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 4
    .parameter "anchorView"

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 779
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 780
    const/4 v2, 0x0

    .line 787
    :goto_0
    return-object v2

    .line 782
    :cond_0
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 783
    .local v2, popupMenu:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 784
    .local v1, menu:Landroid/view/Menu;
    const v3, 0x7f100004

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 785
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 786
    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 326
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 327
    const-string v0, "tel"

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, data:Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 356
    .end local v8           #data:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_0
    return v0

    .line 333
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, type:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v12

    const-string v4, "number_key"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 342
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #type:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    move v0, v12

    .line 356
    goto :goto_0

    .line 348
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #type:Ljava/lang/String;
    .restart local v10       #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .parameter "digits"

    .prologue
    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 655
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    return-object v0
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 405
    :cond_1
    return v1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1359
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1364
    :cond_0
    :goto_0
    return v1

    .line 1360
    :catch_0
    move-exception v0

    .line 1362
    .local v0, se:Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 660
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v2}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 661
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 662
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 665
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 666
    .local v1, length:I
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 667
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 669
    :cond_0
    return-void
.end method

.method private static needToShowDialpadChooser(Landroid/content/Intent;Z)Z
    .locals 4
    .parameter "intent"
    .parameter "isAddCallMode"

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 367
    .local v1, needToShowDialpadChooser:Z
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 369
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 376
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    const/4 v1, 0x1

    .line 396
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return v1

    .line 380
    :cond_2
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "number"

    .prologue
    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1440
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1441
    return-object v0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1432
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1433
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1434
    return-object v0
.end method

.method private newVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1427
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1428
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 1245
    const/4 v1, 0x0

    .line 1247
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1248
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1249
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 1254
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 1249
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1251
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1252
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 5

    .prologue
    .line 1231
    const/4 v2, 0x0

    .line 1233
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1234
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 1238
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1234
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1235
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 1261
    const/4 v2, 0x0

    .line 1263
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1264
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1268
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 1407
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 1408
    new-instance v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/dialpad/DialpadFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/DialpadFragment$2;-><init>(Lcom/android/contacts/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 1420
    .local v0, lastCallArgs:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 1421
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 4
    .parameter "showDialpad"

    .prologue
    .line 1209
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1210
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1224
    return-void

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "data"
    .parameter "normalizedNumber"

    .prologue
    .line 438
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, dialString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 443
    .local v1, digits:Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 448
    .end local v1           #digits:Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 2
    .parameter "fragmentView"

    .prologue
    .line 452
    const v1, 0x7f0600a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 456
    const v1, 0x7f0600a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const v1, 0x7f0600a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v1, 0x7f0600a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    const v1, 0x7f0600aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    const v1, 0x7f0600ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    const v1, 0x7f0600ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const v1, 0x7f0600ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v1, 0x7f0600ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v1, 0x7f0600af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    const v1, 0x7f0600b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 470
    const v1, 0x7f0600b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 581
    const v11, 0x7f060141

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 582
    .local v2, callSettingsMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f06013e

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 583
    .local v1, addToContactMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f06013f

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 584
    .local v9, twoSecPauseMenuItem:Landroid/view/MenuItem;
    const v11, 0x7f060140

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 588
    .local v10, waitMenuItem:Landroid/view/MenuItem;
    if-nez v2, :cond_0

    .line 650
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 593
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 595
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 605
    :cond_1
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 607
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 597
    :cond_2
    invoke-interface {v2, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 609
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 612
    .local v3, digits:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 613
    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 618
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 620
    .local v6, strDigits:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 621
    .local v5, selectionStart:I
    iget-object v11, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 623
    .local v4, selectionEnd:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    .line 624
    if-le v5, v4, :cond_4

    .line 626
    move v8, v5

    .line 627
    .local v8, tmp:I
    move v5, v4

    .line 628
    move v4, v8

    .line 631
    .end local v8           #tmp:I
    :cond_4
    if-eqz v5, :cond_5

    .line 633
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    invoke-static {v5, v4, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 639
    :cond_5
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 640
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 643
    :cond_6
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 647
    .local v7, strLength:I
    invoke-static {v7, v7, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->showWait(IILjava/lang/String;)Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1030
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1034
    :cond_0
    if-eqz p1, :cond_4

    .line 1036
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_2

    .line 1049
    new-instance v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1054
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1057
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private static showWait(IILjava/lang/String;)Z
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "digits"

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x0

    .line 1373
    if-ne p0, p1, :cond_3

    .line 1375
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le p0, v1, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return v0

    .line 1378
    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1381
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1390
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1384
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 1388
    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1330
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 1332
    .local v0, digitsNotEmpty:Z
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1336
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1337
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1347
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1348
    return-void

    .end local v0           #digitsNotEmpty:Z
    :cond_1
    move v0, v2

    .line 1330
    goto :goto_0

    .line 1343
    .restart local v0       #digitsNotEmpty:Z
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 1303
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1304
    .local v0, anchor:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 1306
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1307
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1309
    .local v4, selectionEnd:I
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1310
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1311
    if-ne v5, v4, :cond_0

    .line 1314
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1324
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1318
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1321
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 1322
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "input"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 193
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 833
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 834
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 835
    return-void
.end method

.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v2, 0x0

    .line 426
    .local v2, needToShowDialpadChooser:Z
    invoke-static {p1}, Lcom/android/contacts/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v1

    .line 427
    .local v1, isAddCallMode:Z
    if-nez v1, :cond_1

    .line 428
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v0

    .line 429
    .local v0, digitsFilled:Z
    if-nez v0, :cond_1

    .line 430
    invoke-static {p1, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->needToShowDialpadChooser(Landroid/content/Intent;Z)Z

    move-result v2

    .line 433
    .end local v0           #digitsFilled:Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method public dialButtonPressed()V
    .locals 5

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 912
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 971
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 920
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 938
    :cond_1
    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "persist.radio.otaspdial"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 951
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v4, "The phone number is prohibited explicitly by a rule."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 953
    const v3, 0x7f0b01f2

    invoke-static {v3}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 955
    .local v0, dialogFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "phone_prohibited_dialog"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 959
    .end local v0           #dialogFragment:Landroid/app/DialogFragment;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 961
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->newDialNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 962
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v3, :cond_5

    .line 963
    const-string v3, "com.android.phone.CALL_ORIGIN"

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 967
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    .line 968
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public getDigitsWidget()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 775
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 687
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 688
    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 692
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 693
    invoke-direct {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 697
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 698
    invoke-direct {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 702
    :pswitch_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 703
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 707
    :pswitch_5
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 708
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 712
    :pswitch_6
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 713
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 717
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 718
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 722
    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 723
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 727
    :pswitch_9
    invoke-virtual {p0, v5}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 728
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 732
    :pswitch_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 733
    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 737
    :pswitch_b
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 738
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 742
    :pswitch_c
    invoke-virtual {p0, v6}, Lcom/android/contacts/dialpad/DialpadFragment;->playTone(I)V

    .line 743
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 747
    :pswitch_d
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 751
    :pswitch_e
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 752
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    .line 756
    :pswitch_f
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v1}, Lcom/android/phone/HapticFeedback;->vibrate()V

    .line 757
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/dialpad/DialpadFragment$Listener;->onSearchButtonPressed()V

    goto/16 :goto_0

    .line 763
    :pswitch_10
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 769
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 770
    .local v0, popup:Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600a6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 237
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 564
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 565
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 567
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 569
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 241
    const v4, 0x7f04003e

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, fragmentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 246
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x7f0600b7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 247
    const v4, 0x7f0600b8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 248
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 249
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 251
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 257
    const v4, 0x7f0600b9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, overflowMenuButton:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_0
    :goto_0
    const v4, 0x7f0600a6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, oneButton:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 269
    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 272
    :cond_1
    const v4, 0x7f0600b2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    .line 274
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v5, 0x7f0600b3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    .line 275
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 276
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mSearchButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v5, 0x7f0600b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    .line 282
    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mAdditionalButtonsRow:Landroid/view/View;

    const v5, 0x7f0600b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 290
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 293
    const v4, 0x7f0600a5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 296
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v4, :cond_5

    .line 297
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 303
    :goto_2
    const v4, 0x7f0600ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 304
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 308
    return-object v0

    .line 262
    .end local v1           #oneButton:Landroid/view/View;
    :cond_3
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 285
    .restart local v1       #oneButton:Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialButton:Landroid/view/View;

    goto :goto_1

    .line 299
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1173
    .local v0, item:Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    iget v1, v0, Lcom/android/contacts/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1174
    .local v1, itemId:I
    packed-switch v1, :pswitch_data_0

    .line 1197
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick: unexpected itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_0
    return-void

    .line 1179
    :pswitch_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1186
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1193
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 1174
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 680
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 674
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->dialButtonPressed()V

    .line 676
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x7f0600b8
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 791
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 792
    .local v1, digits:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 793
    .local v2, id:I
    sparse-switch v2, :sswitch_data_0

    move v3, v4

    .line 828
    :cond_0
    :goto_0
    return v3

    .line 795
    :sswitch_0
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 799
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 803
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 804
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 805
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 807
    const v4, 0x7f0b01f3

    const v5, 0x7f0b01f4

    invoke-static {v4, v5}, Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(II)Lcom/android/contacts/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 810
    .local v0, dialogFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "voicemail_not_ready"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #dialogFragment:Landroid/app/DialogFragment;
    :cond_2
    move v3, v4

    .line 814
    goto :goto_0

    .line 817
    :sswitch_2
    const/16 v4, 0x51

    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 824
    :sswitch_3
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v3, v4

    .line 825
    goto :goto_0

    .line 793
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600a6 -> :sswitch_1
        0x7f0600b0 -> :sswitch_2
        0x7f0600b5 -> :sswitch_0
        0x7f0600b8 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1285
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1279
    :pswitch_0
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    :pswitch_1
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialString(Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :pswitch_data_0
    .packed-switch 0x7f06013f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 544
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 547
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 549
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 551
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 554
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 556
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    const-string v1, ""

    iput-object v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 560
    return-void

    .line 556
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 578
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 475
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 479
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 482
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dtmf_tone"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 486
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/HapticFeedback;

    invoke-virtual {v3}, Lcom/android/phone/HapticFeedback;->checkSystemSetting()V

    .line 490
    iget-object v5, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 491
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 496
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v6, 0x3

    const/16 v7, 0x50

    invoke-direct {v3, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setVolumeControlStream(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 506
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v3, :cond_1

    .line 509
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 517
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 528
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 529
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 539
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 540
    return-void

    .end local v1           #parent:Landroid/app/Activity;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    move v3, v4

    .line 482
    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v3, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 503
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 532
    .restart local v1       #parent:Landroid/app/Activity;
    .restart local v2       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 536
    invoke-direct {p0, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 205
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1450
    iput-boolean p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mShowOptionsMenu:Z

    .line 1451
    return-void
.end method

.method playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 984
    iget-boolean v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 995
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 996
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1002
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    .line 1003
    sget-object v2, Lcom/android/contacts/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    monitor-exit v3

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1008
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1009
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/dialpad/DialpadFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment;->mListener:Lcom/android/contacts/dialpad/DialpadFragment$Listener;

    .line 1446
    return-void
.end method
