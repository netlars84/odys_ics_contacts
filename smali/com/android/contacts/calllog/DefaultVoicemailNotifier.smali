.class public Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/android/contacts/calllog/VoicemailNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;,
        Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field public static final TAG:Ljava/lang/String; = "DefaultVoicemailNotifier"

.field private static sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/contacts/calllog/PhoneNumberHelper;)V
    .locals 0
    .parameter "context"
    .parameter "notificationManager"
    .parameter "newCallsQuery"
    .parameter "nameLookupQuery"
    .parameter "phoneNumberHelper"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    iput-object p3, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    .line 82
    iput-object p4, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    .line 83
    iput-object p5, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 84
    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 280
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNameLookupQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 217
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$1;)V

    return-object v0
.end method

.method public static createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 321
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
    .locals 8
    .parameter "context"

    .prologue
    .line 64
    const-class v7, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 67
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 68
    .local v6, contentResolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    invoke-static {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createNewCallsQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-result-object v3

    invoke-static {v6}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createNameLookupQuery(Landroid/content/ContentResolver;)Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-result-object v4

    invoke-static {p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createPhoneNumberHelper(Landroid/content/Context;)Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    sput-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;

    .line 73
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v6           #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/contacts/calllog/DefaultVoicemailNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "DefaultVoicemailNotifier"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method public updateNotification(Landroid/net/Uri;)V
    .locals 22
    .parameter "newCallUri"

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNewCallsQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCallsQuery;->query()[Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v13

    .line 93
    .local v13, newCalls:[Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    array-length v0, v13

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 94
    const-string v17, "DefaultVoicemailNotifier"

    const-string v18, "No voicemails to notify about: clear the notification."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->clearNotification()V

    .line 180
    :goto_0
    return-void

    .line 99
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 102
    .local v15, resources:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 106
    .local v5, callers:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 109
    .local v11, names:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 112
    .local v4, callToNotify:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    move-object v3, v13

    .local v3, arr$:[Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    array-length v9, v3

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v12, v3, v7

    .line 114
    .local v12, newCall:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    iget-object v0, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 115
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNameLookupQuery:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NameLookupQuery;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    if-nez v10, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 122
    iget-object v10, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 125
    :cond_1
    iget-object v0, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 128
    move-object v5, v10

    .line 135
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    iget-object v0, v12, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 136
    move-object v4, v12

    .line 112
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 130
    :cond_4
    const v17, 0x7f0b01bc

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 140
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #newCall:Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;
    :cond_5
    if-eqz p1, :cond_6

    if-nez v4, :cond_6

    .line 141
    const-string v17, "DefaultVoicemailNotifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The new call could not be found in the call log: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    const v17, 0x7f0e0008

    array-length v0, v13

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, title:Ljava/lang/String;
    const v8, 0x108007e

    .line 150
    .local v8, icon:I
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x108007e

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    if-eqz v4, :cond_8

    const/16 v17, -0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v14

    .line 161
    .local v14, notification:Landroid/app/Notification;
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 163
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Lcom/android/contacts/CallDetailActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v6, contentIntent:Landroid/content/Intent;
    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    const-string v17, "EXTRA_VOICEMAIL_URI"

    const/16 v18, 0x0

    aget-object v18, v13, v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 174
    if-eqz v4, :cond_7

    .line 175
    const v17, 0x7f0b01bd

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v4, Lcom/android/contacts/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 179
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/DefaultVoicemailNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    const-string v18, "DefaultVoicemailNotifier"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 150
    .end local v6           #contentIntent:Landroid/content/Intent;
    .end local v14           #notification:Landroid/app/Notification;
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 169
    .restart local v14       #notification:Landroid/app/Notification;
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    sget-object v18, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6       #contentIntent:Landroid/content/Intent;
    goto :goto_4
.end method
