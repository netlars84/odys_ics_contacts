.class public Lcom/android/contacts/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsUtils$1;,
        Lcom/android/contacts/ContactsUtils$ProviderNames;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsUtils"

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static areContactWritableAccountsAvailable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 184
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static areGroupWritableAccountsAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 162
    if-ne p0, p1, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 103
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createHeaderView(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "textResourceId"

    .prologue
    .line 220
    const v2, 0x7f04006d

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, view:Landroid/view/View;
    const v2, 0x7f06009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-object v1
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 176
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 178
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInvitableIntent(Lcom/android/contacts/model/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "accountType"
    .parameter "lookupUri"

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 201
    .local v2, resPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, className:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    .line 205
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 233
    .local v0, appScale:F
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 234
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 236
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 237
    .local v2, rect:Landroid/graphics/Rect;
    aget v3, v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 238
    aget v3, v1, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 239
    aget v3, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 240
    aget v3, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    return-object v2
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 79
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 81
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 83
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 85
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 117
    :cond_1
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_0

    .line 120
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 124
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-static {v8, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, dataParts1:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, dataParts2:[Ljava/lang/String;
    array-length v8, v2

    array-length v9, v3

    if-ne v8, v9, :cond_0

    .line 131
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 132
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v2

    if-ge v4, v8, :cond_4

    .line 133
    aget-object v0, v2, v4

    .line 134
    .local v0, dataPart1:Ljava/lang/String;
    aget-object v1, v3, v4

    .line 137
    .local v1, dataPart2:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_3
    sget-object v8, Lcom/android/contacts/ContactsUtils$1;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$MatchType:[I

    invoke-virtual {v5, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 151
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unknown result value from phone number library"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #dataPart1:Ljava/lang/String;
    .end local v1           #dataPart2:Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 155
    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
