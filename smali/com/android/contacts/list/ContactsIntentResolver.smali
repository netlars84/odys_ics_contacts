.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsIntentResolver"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 53
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 16
    .parameter "intent"

    .prologue
    .line 56
    new-instance v9, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v9}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 58
    .local v9, request:Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, action:Ljava/lang/String;
    const-string v13, "ContactsIntentResolver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Called with action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v13, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 63
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 195
    :cond_0
    :goto_0
    const-string v13, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 196
    .local v11, title:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 197
    invoke-virtual {v9, v11}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    return-object v9

    .line 64
    .end local v11           #title:Ljava/lang/String;
    :cond_2
    const-string v13, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 65
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v13, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 67
    const/16 v13, 0x11

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v13, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 69
    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v13, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 71
    const/16 v13, 0x28

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 72
    :cond_6
    const-string v13, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 73
    const/16 v13, 0x32

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 74
    :cond_7
    const-string v13, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 75
    const/16 v13, 0x14

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 77
    :cond_8
    const-string v13, "android.intent.action.PICK"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 79
    .local v10, resolvedType:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 80
    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 81
    :cond_9
    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 82
    const/16 v13, 0x3c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 83
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v13, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 85
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 86
    :cond_b
    const-string v13, "vnd.android.cursor.dir/phone"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 87
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 88
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 89
    :cond_c
    const-string v13, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 90
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 91
    :cond_d
    const-string v13, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 92
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 93
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 94
    :cond_e
    const-string v13, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 95
    const/16 v13, 0x69

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 97
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_f
    const-string v13, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, component:Ljava/lang/String;
    const-string v13, "alias.DialShortcut"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 100
    const/16 v13, 0x78

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 101
    :cond_10
    const-string v13, "alias.MessageShortcut"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 102
    const/16 v13, 0x82

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 104
    :cond_11
    const/16 v13, 0x6e

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 106
    .end local v2           #component:Ljava/lang/String;
    :cond_12
    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, type:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 109
    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 110
    :cond_13
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 111
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 112
    :cond_14
    const-string v13, "vnd.android.cursor.item/phone"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 113
    const/16 v13, 0x5a

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 114
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 115
    :cond_15
    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 116
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 117
    :cond_16
    const-string v13, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 118
    const/16 v13, 0x64

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 119
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 120
    :cond_17
    const-string v13, "vnd.android.cursor.item/person"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 121
    const/16 v13, 0x46

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 122
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 124
    .end local v12           #type:Ljava/lang/String;
    :cond_18
    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 125
    const/16 v13, 0x50

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 126
    :cond_19
    const-string v13, "android.intent.action.SEARCH"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 128
    const-string v13, "call"

    const-string v14, "action_msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 129
    const-string v13, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, query:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 131
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    const-string v14, "tel"

    const/4 v15, 0x0

    invoke-static {v14, v8, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v5, newIntent:Landroid/content/Intent;
    invoke-virtual {v9, v5}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 136
    .end local v5           #newIntent:Landroid/content/Intent;
    .end local v8           #query:Ljava/lang/String;
    :cond_1a
    const-string v13, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 137
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 139
    :cond_1b
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .restart local v10       #resolvedType:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.dir/contact"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    const-string v13, "vnd.android.cursor.dir/person"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 143
    :cond_1c
    const/16 v13, 0xf

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 145
    :cond_1d
    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 147
    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 150
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_1e
    const-string v13, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 154
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 156
    .local v4, extras:Landroid/os/Bundle;
    if-eqz v4, :cond_1f

    .line 157
    const-string v13, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 159
    const-string v13, "originalRequest"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/list/ContactsRequest;

    .line 161
    .local v7, originalRequest:Lcom/android/contacts/list/ContactsRequest;
    if-eqz v7, :cond_1f

    .line 162
    invoke-virtual {v9, v7}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 166
    .end local v7           #originalRequest:Lcom/android/contacts/list/ContactsRequest;
    :cond_1f
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 171
    .end local v4           #extras:Landroid/os/Bundle;
    :cond_20
    const-string v13, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 174
    .local v3, data:Landroid/net/Uri;
    const-string v13, "call"

    const-string v14, "action_msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 175
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    const-class v14, Lcom/android/contacts/CallContactActivity;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v5       #newIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v9, v5}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    .end local v5           #newIntent:Landroid/content/Intent;
    :cond_21
    const/16 v13, 0x8c

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 180
    invoke-virtual {v9, v3}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 181
    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 184
    .end local v3           #data:Landroid/net/Uri;
    :cond_22
    const-string v13, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 185
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v13}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :cond_23
    const-string v13, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, number:Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.INSERT"

    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .restart local v5       #newIntent:Landroid/content/Intent;
    const-string v13, "phone"

    invoke-virtual {v5, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {v9, v5}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
