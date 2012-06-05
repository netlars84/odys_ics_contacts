.class public Lcom/android/contacts/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "currentCountryIso"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "countryIso"

    .prologue
    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string p1, ""

    .line 213
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 207
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object p3, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 213
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 112
    .local v10, phonesCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 114
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v8, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 116
    .local v8, info:Lcom/android/contacts/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 117
    .local v6, contactId:J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 119
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 120
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 121
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 122
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 123
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 124
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 125
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 127
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v6           #contactId:J
    .end local v9           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 138
    :goto_1
    return-object v8

    .line 129
    .end local v8           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 132
    .end local v8           #info:Lcom/android/contacts/calllog/ContactInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 136
    :cond_1
    const/4 v8, 0x0

    .restart local v8       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 6
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 170
    move-object v0, p1

    .line 171
    .local v0, contactNumber:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, numberE164:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    move-object v0, v2

    .line 182
    .end local v2           #numberE164:Ljava/lang/String;
    :cond_0
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 183
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 184
    .local v1, info:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v1, :cond_1

    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v1, v4, :cond_1

    .line 185
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 187
    :cond_1
    return-object v1
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 3
    .parameter "sipAddress"

    .prologue
    .line 154
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 155
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    const-string v1, "sip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 6
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 59
    .local v2, sipInfo:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    .line 62
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, username:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-direct {p0, v4, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 67
    .end local v4           #username:Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 80
    .end local v2           #sipInfo:Lcom/android/contacts/calllog/ContactInfo;
    .local v0, info:Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v0, :cond_5

    .line 82
    const/4 v3, 0x0

    .line 94
    .local v3, updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :goto_1
    return-object v3

    .line 70
    .end local v0           #info:Lcom/android/contacts/calllog/ContactInfo;
    .end local v3           #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 72
    .local v1, phoneInfo:Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v1, :cond_3

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v1, v5, :cond_4

    .line 74
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 76
    :cond_4
    move-object v0, v1

    .restart local v0       #info:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 85
    .end local v1           #phoneInfo:Lcom/android/contacts/calllog/ContactInfo;
    :cond_5
    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v0, v5, :cond_6

    .line 87
    new-instance v3, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 88
    .restart local v3       #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    iput-object p1, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 89
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto :goto_1

    .line 91
    .end local v3           #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    :cond_6
    move-object v3, v0

    .restart local v3       #updatedInfo:Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method
