.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataAction"


# instance fields
.field private mAlternateIconDescriptionRes:I

.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/database/Cursor;)V
    .locals 31
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "cursor"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 72
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    .line 73
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 76
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 77
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 78
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 79
    .local v23, typeColumnIndex:I
    const/16 v27, -0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 80
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 83
    .local v24, typeValue:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/model/AccountType$EditType;

    .line 84
    .local v22, type:Lcom/android/contacts/model/AccountType$EditType;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 85
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 87
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 99
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v23           #typeColumnIndex:I
    .end local v24           #typeValue:I
    :cond_1
    :goto_0
    const-string v27, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_2

    .line 100
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 103
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 107
    :cond_3
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 108
    sget-object v27, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    .line 111
    .local v8, hasPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v9

    .line 114
    .local v9, hasSms:Z
    const-string v27, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 116
    const-string v27, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, number:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 119
    if-eqz v8, :cond_7

    new-instance v18, Landroid/content/Intent;

    const-string v27, "android.intent.action.CALL_PRIVILEGED"

    const-string v28, "tel"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v18, phoneIntent:Landroid/content/Intent;
    :goto_1
    if-eqz v9, :cond_8

    new-instance v21, Landroid/content/Intent;

    const-string v27, "android.intent.action.SENDTO"

    const-string v28, "smsto"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    .local v21, smsIntent:Landroid/content/Intent;
    :goto_2
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    .line 126
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 127
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 129
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/contacts/model/DataKind;->iconAltDescriptionRes:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    .line 220
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #phoneIntent:Landroid/content/Intent;
    .end local v21           #smsIntent:Landroid/content/Intent;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 222
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.VIEW"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    const/high16 v28, 0x1400

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    return-void

    .line 90
    .end local v8           #hasPhone:Z
    .end local v9           #hasSms:Z
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v22       #type:Lcom/android/contacts/model/AccountType$EditType;
    .restart local v23       #typeColumnIndex:I
    .restart local v24       #typeValue:I
    :cond_6
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 119
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v23           #typeColumnIndex:I
    .end local v24           #typeValue:I
    .restart local v8       #hasPhone:Z
    .restart local v9       #hasSms:Z
    .restart local v17       #number:Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 121
    .restart local v18       #phoneIntent:Landroid/content/Intent;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 130
    .restart local v21       #smsIntent:Landroid/content/Intent;
    :cond_9
    if-eqz v8, :cond_a

    .line 131
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 132
    :cond_a
    if-eqz v9, :cond_4

    .line 133
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 137
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #phoneIntent:Landroid/content/Intent;
    .end local v21           #smsIntent:Landroid/content/Intent;
    :cond_b
    const-string v27, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 139
    const-string v27, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 141
    const-string v27, "sip"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 142
    .local v5, callUri:Landroid/net/Uri;
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 151
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #callUri:Landroid/net/Uri;
    :cond_c
    const-string v27, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 152
    const-string v27, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .restart local v3       #address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 154
    const-string v27, "mailto"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 155
    .local v16, mailUri:Landroid/net/Uri;
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.SENDTO"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 158
    .end local v3           #address:Ljava/lang/String;
    .end local v16           #mailUri:Landroid/net/Uri;
    :cond_d
    const-string v27, "vnd.android.cursor.item/website"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 159
    const-string v27, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 160
    .local v25, url:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 161
    new-instance v26, Landroid/net/WebAddress;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 162
    .local v26, webAddress:Landroid/net/WebAddress;
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.VIEW"

    invoke-virtual/range {v26 .. v26}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 165
    .end local v25           #url:Ljava/lang/String;
    .end local v26           #webAddress:Landroid/net/WebAddress;
    :cond_e
    const-string v27, "vnd.android.cursor.item/im"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 166
    const-string v27, "vnd.android.cursor.item/email_v2"

    const-string v28, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 168
    .local v14, isEmail:Z
    if-nez v14, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 169
    :cond_f
    if-eqz v14, :cond_13

    const/16 v20, 0x5

    .line 172
    .local v20, protocol:I
    :goto_4
    if-eqz v14, :cond_10

    .line 175
    const v27, 0x7f0b0148

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 176
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 179
    :cond_10
    const-string v27, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, host:Ljava/lang/String;
    if-eqz v14, :cond_14

    const-string v27, "data1"

    :goto_5
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, data:Ljava/lang/String;
    const/16 v27, -0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 184
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v10

    .line 187
    :cond_11
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 188
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, authority:Ljava/lang/String;
    new-instance v27, Landroid/net/Uri$Builder;

    invoke-direct/range {v27 .. v27}, Landroid/net/Uri$Builder;-><init>()V

    const-string v28, "imto"

    invoke-virtual/range {v27 .. v28}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 191
    .local v12, imUri:Landroid/net/Uri;
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.SENDTO"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 195
    const-string v27, "chat_capability"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 196
    .local v6, chatCapability:I
    and-int/lit8 v27, v6, 0x4

    if-eqz v27, :cond_15

    const/4 v15, 0x1

    .line 198
    .local v15, isVideoChatCapable:Z
    :goto_6
    and-int/lit8 v27, v6, 0x1

    if-eqz v27, :cond_16

    const/4 v13, 0x1

    .line 200
    .local v13, isAudioChatCapable:Z
    :goto_7
    if-nez v15, :cond_12

    if-eqz v13, :cond_4

    .line 201
    :cond_12
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.SENDTO"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "xmpp:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "?call"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    invoke-direct/range {v27 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 203
    if-eqz v15, :cond_17

    .line 204
    const v27, 0x7f0200aa

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 205
    const v27, 0x7f0b014d

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 169
    .end local v4           #authority:Ljava/lang/String;
    .end local v6           #chatCapability:I
    .end local v7           #data:Ljava/lang/String;
    .end local v10           #host:Ljava/lang/String;
    .end local v12           #imUri:Landroid/net/Uri;
    .end local v13           #isAudioChatCapable:Z
    .end local v15           #isVideoChatCapable:Z
    .end local v20           #protocol:I
    :cond_13
    const-string v27, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_4

    .line 180
    .restart local v10       #host:Ljava/lang/String;
    .restart local v20       #protocol:I
    :cond_14
    const-string v27, "data1"

    goto/16 :goto_5

    .line 196
    .restart local v4       #authority:Ljava/lang/String;
    .restart local v6       #chatCapability:I
    .restart local v7       #data:Ljava/lang/String;
    .restart local v12       #imUri:Landroid/net/Uri;
    :cond_15
    const/4 v15, 0x0

    goto :goto_6

    .line 198
    .restart local v15       #isVideoChatCapable:Z
    :cond_16
    const/4 v13, 0x0

    goto :goto_7

    .line 207
    .restart local v13       #isAudioChatCapable:Z
    :cond_17
    const v27, 0x7f0200a9

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 208
    const v27, 0x7f0b014c

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 213
    .end local v4           #authority:Ljava/lang/String;
    .end local v6           #chatCapability:I
    .end local v7           #data:Ljava/lang/String;
    .end local v10           #host:Ljava/lang/String;
    .end local v12           #imUri:Landroid/net/Uri;
    .end local v13           #isAudioChatCapable:Z
    .end local v14           #isEmail:Z
    .end local v15           #isVideoChatCapable:Z
    .end local v20           #protocol:I
    :cond_18
    const-string v27, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 214
    const-string v27, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 215
    .local v19, postalAddress:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 216
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 238
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 232
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 243
    const-string v3, "data5"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    :goto_0
    return v2

    .line 248
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v2, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 287
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 295
    :goto_0
    return-object v2

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/DataKind;->resPackageName:Ljava/lang/String;

    .line 290
    .local v1, resPackageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 295
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    return-wide v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 324
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 327
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 328
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 331
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 332
    .local v0, that:Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
