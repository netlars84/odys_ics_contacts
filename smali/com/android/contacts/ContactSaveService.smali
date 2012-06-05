.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_PRIMARY:Ljava/lang/String; = "clearPrimary"

.field public static final ACTION_CREATE_GROUP:Ljava/lang/String; = "createGroup"

.field public static final ACTION_DELETE_CONTACT:Ljava/lang/String; = "delete"

.field public static final ACTION_DELETE_GROUP:Ljava/lang/String; = "deleteGroup"

.field public static final ACTION_JOIN_CONTACTS:Ljava/lang/String; = "joinContacts"

.field public static final ACTION_NEW_RAW_CONTACT:Ljava/lang/String; = "newRawContact"

.field public static final ACTION_RENAME_GROUP:Ljava/lang/String; = "renameGroup"

.field public static final ACTION_SAVE_CONTACT:Ljava/lang/String; = "saveContact"

.field public static final ACTION_SET_RINGTONE:Ljava/lang/String; = "setRingtone"

.field public static final ACTION_SET_SEND_TO_VOICEMAIL:Ljava/lang/String; = "sendToVoicemail"

.field public static final ACTION_SET_STARRED:Ljava/lang/String; = "setStarred"

.field public static final ACTION_SET_SUPER_PRIMARY:Ljava/lang/String; = "setSuperPrimary"

.field public static final ACTION_UPDATE_GROUP:Ljava/lang/String; = "updateGroup"

.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final EXTRA_CALLBACK_INTENT:Ljava/lang/String; = "callbackIntent"

.field public static final EXTRA_CONTACT_ID1:Ljava/lang/String; = "contactId1"

.field public static final EXTRA_CONTACT_ID2:Ljava/lang/String; = "contactId2"

.field public static final EXTRA_CONTACT_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final EXTRA_CONTACT_WRITABLE:Ljava/lang/String; = "contactWritable"

.field public static final EXTRA_CONTENT_VALUES:Ljava/lang/String; = "contentValues"

.field public static final EXTRA_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field public static final EXTRA_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final EXTRA_DATA_SET:Ljava/lang/String; = "dataSet"

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final EXTRA_GROUP_LABEL:Ljava/lang/String; = "groupLabel"

.field public static final EXTRA_RAW_CONTACTS_TO_ADD:Ljava/lang/String; = "rawContactsToAdd"

.field public static final EXTRA_RAW_CONTACTS_TO_REMOVE:Ljava/lang/String; = "rawContactsToRemove"

.field public static final EXTRA_SAVE_IS_PROFILE:Ljava/lang/String; = "saveIsProfile"

.field public static final EXTRA_SAVE_MODE:Ljava/lang/String; = "saveMode"

.field public static final EXTRA_SAVE_SUCCEEDED:Ljava/lang/String; = "saveSucceeded"

.field public static final EXTRA_SEND_TO_VOICEMAIL_FLAG:Ljava/lang/String; = "sendToVoicemailFlag"

.field public static final EXTRA_STARRED_FLAG:Ljava/lang/String; = "starred"

.field private static final PERSIST_TRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContactSaveService"

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data15"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 139
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "ContactSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactSaveService;->setIntentRedelivery(Z)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method private addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 14
    .parameter "resolver"
    .parameter "rawContactsToAdd"
    .parameter "groupId"

    .prologue
    .line 620
    if-nez p2, :cond_1

    .line 669
    :cond_0
    return-void

    .line 623
    :cond_1
    move-object/from16 v0, p2

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v6, v0, v3

    .line 625
    .local v6, rawContactId:J
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v8, rawContactOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 631
    .local v1, assertBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "vnd.android.cursor.item/group_membership"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 635
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 636
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 641
    .local v4, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "raw_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 642
    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 643
    const-string v10, "data1"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 644
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    const/4 v9, 0x0

    .line 654
    .local v9, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 655
    const-string v10, "com.android.contacts"

    invoke-virtual {p1, v10, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    .end local v1           #assertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #rawContactOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v9           #results:[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :catch_0
    move-exception v2

    .line 659
    .local v2, e:Landroid/os/RemoteException;
    const-string v10, "ContactSaveService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 661
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 664
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v10, "ContactSaveService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assert failed in adding raw contact ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Already exists in group "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .parameter
    .parameter "rawContactId1"
    .parameter "rawContactId2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 976
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 977
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 978
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 979
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    return-void
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 802
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 803
    .local v0, dataId:J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 804
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for clearPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 810
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "dataId"

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 798
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 821
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 824
    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 456
    const-string v9, "accountType"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, accountType:Ljava/lang/String;
    const-string v9, "accountName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, accountName:Ljava/lang/String;
    const-string v9, "dataSet"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, dataSet:Ljava/lang/String;
    const-string v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, label:Ljava/lang/String;
    const-string v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 462
    .local v6, rawContactsToAdd:[J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "account_type"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v9, "account_name"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v9, "data_set"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v9, "title"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 471
    .local v7, resolver:Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 475
    .local v4, groupUri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 476
    const-string v9, "ContactSaveService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t create group with label "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-direct {p0, v7, v6, v9, v10}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 485
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 486
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v9, "data1"

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    const-string v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 490
    .local v2, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 492
    const-string v9, "data"

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/ContentValues;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 493
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "groupId"

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 540
    return-object v0
.end method

.method public static createGroupRenameIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "groupId"
    .parameter "newLabel"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 501
    .local p4, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "renameGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v2, "groupId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 504
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    return-object v1
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "groupId"
    .parameter "newLabel"
    .parameter "rawContactsToAdd"
    .parameter "rawContactsToRemove"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 572
    .local p6, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "updateGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "groupId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 575
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 577
    const-string v2, "rawContactsToRemove"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 585
    return-object v1
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "contactId1"
    .parameter "contactId2"
    .parameter "contactWritable"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 843
    .local p6, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "joinContacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v2, "contactId1"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 846
    const-string v2, "contactId2"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 847
    const-string v2, "contactWritable"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 851
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 854
    return-object v1
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "label"
    .parameter "rawContactsToAdd"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 438
    .local p4, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "createGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "accountType"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "accountName"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "dataSet"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v2, "groupLabel"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 452
    return-object v1
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter
    .parameter "account"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "newRawContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    if-eqz p2, :cond_0

    .line 215
    const-string v2, "accountName"

    iget-object v3, p2, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "accountType"

    iget-object v3, p2, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "dataSet"

    iget-object v3, p2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :cond_0
    const-string v2, "contentValues"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    return-object v1
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 232
    const-string v14, "accountName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, accountName:Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, accountType:Ljava/lang/String;
    const-string v14, "dataSet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, dataSet:Ljava/lang/String;
    const-string v14, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 236
    .local v12, valueList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v14, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 238
    .local v3, callbackIntent:Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v7, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "data_set"

    invoke-virtual {v14, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 246
    .local v11, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 247
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 248
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 249
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 255
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 258
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 263
    .local v10, results:[Landroid/content/ContentProviderResult;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 264
    .local v8, rawContactUri:Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 267
    return-void

    .line 259
    .end local v8           #rawContactUri:Landroid/net/Uri;
    .end local v10           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 260
    .local v5, e:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "state"
    .parameter "saveModeExtraKey"
    .parameter "saveMode"
    .parameter "isProfile"
    .parameter
    .parameter "callbackAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 276
    .local p5, callbackActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "saveContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v2, "saveIsProfile"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    return-object v1
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "contactUri"
    .parameter "value"

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "setRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    const-string v1, "customRingtone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "contactUri"
    .parameter "value"

    .prologue
    .line 717
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "sendToVoicemail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 720
    const-string v1, "sendToVoicemailFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "contactUri"
    .parameter "value"

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 694
    const-string v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "dataId"

    .prologue
    .line 767
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 770
    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 828
    const-string v1, "contactUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 829
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 830
    const-string v1, "ContactSaveService"

    const-string v2, "Invalid arguments for deleteContact request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 544
    const-string v2, "groupId"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 545
    .local v0, groupId:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 546
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid arguments for deleteGroup request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .parameter "callbackIntent"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1003
    return-void
.end method

.method private getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 9
    .parameter "state"
    .parameter
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .local p2, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v5, -0x1

    .line 406
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDeltaList;->findRawContactId()J

    move-result-wide v3

    .line 407
    .local v3, rawContactId:J
    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 420
    .end local v3           #rawContactId:J
    :goto_0
    return-wide v3

    .line 411
    .restart local v3       #rawContactId:J
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    .local v0, diffSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 413
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 414
    .local v2, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 417
    aget-object v5, p3, v1

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    goto :goto_0

    .line 412
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    move-wide v3, v5

    .line 420
    goto :goto_0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 29
    .parameter "intent"

    .prologue
    .line 875
    const-string v3, "contactId1"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 876
    .local v12, contactId1:J
    const-string v3, "contactId2"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 877
    .local v14, contactId2:J
    const-string v3, "contactWritable"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    .line 878
    .local v28, writable:Z
    const-wide/16 v5, -0x1

    cmp-long v3, v12, v5

    if-eqz v3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v3, v14, v5

    if-nez v3, :cond_1

    .line 879
    :cond_0
    const-string v3, "ContactSaveService"

    const-string v5, "Invalid arguments for joinContacts request"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 887
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "contact_id=? OR contact_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 893
    .local v10, c:Landroid/database/Cursor;
    const-wide/16 v26, -0x1

    .line 895
    .local v26, verifiedNameRawContactId:J
    const/16 v19, -0x1

    .line 896
    .local v19, maxDisplayNameSource:I
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [J

    move-object/from16 v23, v0

    .line 897
    .local v23, rawContactIds:[J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_3

    .line 898
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 899
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 900
    .local v21, rawContactId:J
    aput-wide v21, v23, v17

    .line 901
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 902
    .local v20, nameSource:I
    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 903
    move/from16 v19, v20

    .line 897
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 910
    .end local v20           #nameSource:I
    .end local v21           #rawContactId:J
    :cond_3
    if-eqz v28, :cond_6

    .line 911
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 912
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 913
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v5, v12

    if-nez v3, :cond_5

    .line 914
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 915
    .restart local v20       #nameSource:I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const-wide/16 v5, -0x1

    cmp-long v3, v26, v5

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 918
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v26

    .line 911
    .end local v20           #nameSource:I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 924
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 928
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v4, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_9

    .line 930
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 931
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 932
    aget-wide v5, v23, v17

    aget-wide v7, v23, v18

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 930
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 924
    .end local v4           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v23           #rawContactIds:[J
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 929
    .restart local v4       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17       #i:I
    .restart local v18       #j:I
    .restart local v23       #rawContactIds:[J
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 939
    .end local v18           #j:I
    :cond_9
    const-wide/16 v5, -0x1

    cmp-long v3, v26, v5

    if-eqz v3, :cond_a

    .line 940
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 942
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "name_verified"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 943
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_a
    const/16 v24, 0x0

    .line 949
    .local v24, success:Z
    :try_start_1
    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 950
    const v3, 0x7f0b0035

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 951
    const/16 v24, 0x1

    .line 960
    :goto_5
    const-string v3, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 961
    .local v11, callbackIntent:Landroid/content/Intent;
    if-eqz v24, :cond_b

    .line 962
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    aget-wide v5, v23, v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v25

    .line 964
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 966
    .end local v25           #uri:Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 952
    .end local v11           #callbackIntent:Landroid/content/Intent;
    :catch_0
    move-exception v16

    .line 953
    .local v16, e:Landroid/os/RemoteException;
    const-string v3, "ContactSaveService"

    const-string v5, "Failed to apply aggregation exception batch"

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    const v3, 0x7f0b005a

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5

    .line 955
    .end local v16           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v16

    .line 956
    .local v16, e:Landroid/content/OperationApplicationException;
    const-string v3, "ContactSaveService"

    const-string v5, "Failed to apply aggregation exception batch"

    move-object/from16 v0, v16

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    const v3, 0x7f0b005a

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    goto :goto_5
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 151
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method private removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 11
    .parameter "resolver"
    .parameter "rawContactsToRemove"
    .parameter "groupId"

    .prologue
    .line 673
    if-nez p2, :cond_1

    .line 685
    :cond_0
    return-void

    .line 676
    :cond_1
    move-object v0, p2

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 680
    .local v3, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "vnd.android.cursor.item/group_membership"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 515
    const-string v6, "groupId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 516
    .local v1, groupId:J
    const-string v6, "groupLabel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, label:Ljava/lang/String;
    cmp-long v6, v1, v8

    if-nez v6, :cond_0

    .line 519
    const-string v6, "ContactSaveService"

    const-string v7, "Invalid arguments for renameGroup request"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 526
    .local v3, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 528
    const-string v6, "callbackIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 529
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 530
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 34
    .parameter "intent"

    .prologue
    .line 293
    const-string v5, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/model/EntityDeltaList;

    .line 294
    .local v31, state:Lcom/android/contacts/model/EntityDeltaList;
    const-string v5, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 295
    .local v12, callbackIntent:Landroid/content/Intent;
    const-string v5, "saveIsProfile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 298
    .local v22, isProfile:Z
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 299
    .local v10, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, v31

    invoke-static {v0, v10}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 301
    const/16 v24, 0x0

    .line 303
    .local v24, lookupUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 306
    .local v4, resolver:Landroid/content/ContentResolver;
    const/16 v32, 0x0

    .local v32, tries:I
    move/from16 v33, v32

    .line 307
    .end local v32           #tries:I
    .local v33, tries:I
    :goto_0
    add-int/lit8 v32, v33, 0x1

    .end local v33           #tries:I
    .restart local v32       #tries:I
    const/4 v5, 0x3

    move/from16 v0, v33

    if-ge v0, v5, :cond_1

    .line 310
    :try_start_0
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/EntityDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v17

    .line 318
    .local v17, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v29, 0x0

    .line 319
    .local v29, results:[Landroid/content/ContentProviderResult;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 320
    const-string v5, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v29

    .line 323
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v17

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/EntityDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v26

    .line 324
    .local v26, rawContactId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v26, v5

    if-nez v5, :cond_2

    .line 325
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID after save"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    .end local v17           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v26           #rawContactId:J
    .end local v29           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v18

    .line 357
    .local v18, e:Landroid/os/RemoteException;
    const-string v5, "ContactSaveService"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    .end local v18           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 401
    return-void

    .line 327
    .restart local v17       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v26       #rawContactId:J
    .restart local v29       #results:[Landroid/content/ContentProviderResult;
    :cond_2
    if-eqz v22, :cond_6

    .line 331
    :try_start_1
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lookup"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 335
    .local v11, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 337
    .local v13, contactId:J
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 338
    .local v23, lookupKey:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v24

    .line 341
    .end local v13           #contactId:J
    .end local v23           #lookupKey:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 348
    .end local v11           #c:Landroid/database/Cursor;
    :goto_2
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved contact. New URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "saveSucceeded"

    const/4 v6, 0x1

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 360
    .end local v17           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v26           #rawContactId:J
    .end local v29           #results:[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v18

    .line 362
    .local v18, e:Landroid/content/OperationApplicationException;
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version consistency failed, re-parenting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v30, Ljava/lang/StringBuilder;

    const-string v5, "_id IN("

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v30, sb:Ljava/lang/StringBuilder;
    const/16 v19, 0x1

    .line 365
    .local v19, first:Z
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v15

    .line 366
    .local v15, count:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move/from16 v0, v20

    if-ge v0, v15, :cond_7

    .line 367
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v26

    .line 368
    .local v26, rawContactId:Ljava/lang/Long;
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 369
    if-nez v19, :cond_4

    .line 370
    const/16 v5, 0x2c

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_4
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    const/16 v19, 0x0

    .line 366
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 341
    .end local v15           #count:I
    .end local v18           #e:Landroid/content/OperationApplicationException;
    .end local v19           #first:Z
    .end local v20           #i:I
    .end local v30           #sb:Ljava/lang/StringBuilder;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v17       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v26, rawContactId:J
    .restart local v29       #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 344
    .end local v11           #c:Landroid/database/Cursor;
    :cond_6
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v28

    .line 346
    .local v28, rawContactUri:Landroid/net/Uri;
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v24

    goto/16 :goto_2

    .line 376
    .end local v17           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v26           #rawContactId:J
    .end local v28           #rawContactUri:Landroid/net/Uri;
    .end local v29           #results:[Landroid/content/ContentProviderResult;
    .restart local v15       #count:I
    .restart local v18       #e:Landroid/content/OperationApplicationException;
    .restart local v19       #first:Z
    .restart local v20       #i:I
    .restart local v30       #sb:Ljava/lang/StringBuilder;
    :cond_7
    const-string v5, ")"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    if-eqz v19, :cond_8

    .line 379
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Version consistency failed for a new contact"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    :cond_8
    if-eqz v22, :cond_9

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    :goto_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/contacts/model/EntityDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v25

    .line 387
    .local v25, newState:Lcom/android/contacts/model/EntityDeltaList;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->mergeAfter(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/EntityDeltaList;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v31

    .line 390
    if-eqz v22, :cond_a

    .line 391
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/EntityDelta;

    .line 392
    .local v16, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_5

    .line 382
    .end local v16           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v25           #newState:Lcom/android/contacts/model/EntityDeltaList;
    :cond_9
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_4

    .restart local v25       #newState:Lcom/android/contacts/model/EntityDeltaList;
    :cond_a
    move/from16 v33, v32

    .line 395
    .end local v32           #tries:I
    .restart local v33       #tries:I
    goto/16 :goto_0
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 752
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 753
    .local v0, contactUri:Landroid/net/Uri;
    const-string v3, "customRingtone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 755
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRingtone"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_0
    return-void

    .line 758
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 759
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "custom_ringtone"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 726
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 727
    .local v0, contactUri:Landroid/net/Uri;
    const-string v3, "sendToVoicemailFlag"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 728
    .local v1, value:Z
    if-nez v0, :cond_0

    .line 729
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRedirectToVoicemail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :goto_0
    return-void

    .line 733
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 734
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "send_to_voicemail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 700
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 701
    .local v0, contactUri:Landroid/net/Uri;
    const-string v3, "starred"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 702
    .local v1, value:Z
    if-nez v0, :cond_0

    .line 703
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setStarred request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 708
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 774
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 775
    .local v0, dataId:J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 776
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setSuperPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 782
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 993
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 159
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 589
    const-string v9, "groupId"

    invoke-virtual {p1, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 590
    .local v1, groupId:J
    const-string v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, label:Ljava/lang/String;
    const-string v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 592
    .local v5, rawContactsToAdd:[J
    const-string v9, "rawContactsToRemove"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 594
    .local v6, rawContactsToRemove:[J
    cmp-long v9, v1, v11

    if-nez v9, :cond_0

    .line 595
    const-string v9, "ContactSaveService"

    const-string v10, "Invalid arguments for updateGroup request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 600
    .local v7, resolver:Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 603
    .local v3, groupUri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 604
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v7, v3, v8, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 610
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-direct {p0, v7, v5, v1, v2}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 611
    invoke-direct {p0, v7, v6, v1, v2}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    .line 613
    const-string v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 614
    .local v0, callbackIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 615
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4
    .parameter "callbackIntent"

    .prologue
    .line 1009
    sget-object v2, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactSaveService$Listener;

    .line 1010
    .local v1, listener:Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 1016
    .end local v1           #listener:Lcom/android/contacts/ContactSaveService$Listener;
    :cond_1
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 169
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #service:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 182
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :cond_4
    const-string v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    :cond_5
    const-string v1, "updateGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_6
    const-string v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    :cond_7
    const-string v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :cond_8
    const-string v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 192
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :cond_9
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 194
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :cond_a
    const-string v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 196
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_b
    const-string v1, "sendToVoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 198
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 199
    :cond_c
    const-string v1, "setRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
