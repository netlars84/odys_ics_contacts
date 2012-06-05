.class public Lcom/android/contacts/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/PhoneNumberInteraction$1;,
        Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;,
        Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItemAdapter;,
        Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;,
        Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_NUMBER_SELECTION:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 NOT NULL"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallOrigin:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

.field private mLoader:Landroid/content/CursorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-class v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    .line 256
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "context"
    .parameter "interactionType"
    .parameter "dismissListener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "interactionType"
    .parameter "dismissListener"
    .parameter "callOrigin"

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 292
    iput-object p2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    .line 293
    iput-object p3, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 294
    iput-object p4, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    .line 295
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V

    return-void
.end method

.method private isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/contacts/activities/TransactionSafeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/activities/TransactionSafeActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 416
    :cond_0
    return-void
.end method

.method private static performAction(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "phoneNumber"
    .parameter "interactionType"
    .parameter "callOrigin"

    .prologue
    const/4 v3, 0x0

    .line 305
    sget-object v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$1;->$SwitchMap$com$android$contacts$interactions$PhoneNumberInteraction$InteractionType:[I

    invoke-virtual {p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 314
    const-string v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void

    .line 307
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iget-object v2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 430
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    sget-object v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->PHONE_CALL:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    .line 432
    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "uri"
    .parameter "callOrigin"

    .prologue
    .line 444
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    sget-object v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->PHONE_CALL:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    .line 446
    return-void
.end method

.method public static startInteractionForTextMessage(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 461
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    sget-object v1, Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;->SMS:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    .line 462
    return-void
.end method


# virtual methods
.method getLoader()Landroid/content/CursorLoader;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->isSafeToCommitTransactions()Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 405
    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v1, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const/4 v2, 0x0

    .line 366
    .local v2, primaryPhone:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const-string v3, "is_super_primary"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 369
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 385
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 388
    if-eqz v2, :cond_4

    .line 389
    invoke-direct {p0, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    goto :goto_0

    .line 373
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    .line 374
    .local v0, item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 375
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 376
    const-string v3, "account_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 378
    const-string v3, "data_set"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    .line 379
    const-string v3, "data2"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 380
    const-string v3, "data3"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 382
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    .end local v0           #item:Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;
    :catchall_0
    move-exception v3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v3

    .line 394
    :cond_4
    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 396
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 397
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    goto/16 :goto_0

    .line 398
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 399
    invoke-direct {p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 400
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;

    iget-object v3, v3, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->showDisambiguationDialog(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method showDisambiguationDialog(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneItem;>;"
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mInteractionType:Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;

    iget-object v2, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/android/contacts/interactions/PhoneNumberInteraction$InteractionType;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method startInteraction(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 332
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, inputUriAsString:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    const-string v0, "data"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, queryUri:Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/contacts/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    const-string v4, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 NOT NULL"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    .line 352
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/contacts/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 354
    return-void

    .line 337
    .end local v2           #queryUri:Landroid/net/Uri;
    :cond_1
    move-object v2, p1

    .restart local v2       #queryUri:Landroid/net/Uri;
    goto :goto_0

    .line 339
    .end local v2           #queryUri:Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    move-object v2, p1

    .restart local v2       #queryUri:Landroid/net/Uri;
    goto :goto_0

    .line 342
    .end local v2           #queryUri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Uri must be contact Uri or data Uri (input: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
