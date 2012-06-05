.class public Lcom/android/contacts/ContactListEmptyView;
.super Landroid/widget/ScrollView;
.source "ContactListEmptyView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactListEmptyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private isSyncActive()Z
    .locals 9

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/ContactListEmptyView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 99
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 100
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v3

    .line 101
    .local v3, contentService:Landroid/content/IContentService;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 103
    .local v0, account:Landroid/accounts/Account;
    :try_start_0
    const-string v7, "com.android.contacts"

    invoke-interface {v3, v0, v7}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    const/4 v7, 0x1

    .line 111
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #contentService:Landroid/content/IContentService;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :goto_1
    return v7

    .line 106
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #contentService:Landroid/content/IContentService;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :catch_0
    move-exception v4

    .line 107
    .local v4, e:Landroid/os/RemoteException;
    const-string v7, "ContactListEmptyView"

    const-string v8, "Could not get the sync status"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #contentService:Landroid/content/IContentService;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 44
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    .local v0, empty:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public show(ZZZZZZZ)V
    .locals 6
    .parameter "searchMode"
    .parameter "displayOnlyPhones"
    .parameter "isFavoritesMode"
    .parameter "isQueryMode"
    .parameter "isShortcutAction"
    .parameter "isMultipleSelectionEnabled"
    .parameter "showSelectedOnly"

    .prologue
    const v5, 0x7f0b0054

    .line 51
    if-eqz p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 55
    :cond_0
    const v4, 0x7f060064

    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, empty:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/ContactListEmptyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_2

    .line 58
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    :goto_1
    if-eqz p6, :cond_5

    .line 64
    if-eqz p7, :cond_4

    .line 65
    const v4, 0x7f0b017f

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_2
    if-eqz p3, :cond_3

    .line 60
    const v4, 0x7f0b0088

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    :cond_3
    if-eqz p4, :cond_1

    .line 62
    const v4, 0x7f0b0053

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_5
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 72
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 73
    .local v2, hasSim:Z
    invoke-direct {p0}, Lcom/android/contacts/ContactListEmptyView;->isSyncActive()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 74
    if-eqz p5, :cond_6

    .line 76
    const v4, 0x7f0b0082

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 78
    :cond_6
    if-eqz v2, :cond_7

    .line 79
    const v4, 0x7f0b0085

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 81
    :cond_7
    const v4, 0x7f0b0087

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 84
    :cond_8
    if-eqz p5, :cond_9

    .line 86
    const v4, 0x7f0b0083

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 87
    :cond_9
    if-eqz v2, :cond_a

    .line 88
    const v4, 0x7f0b0084

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :cond_a
    const v4, 0x7f0b0086

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
