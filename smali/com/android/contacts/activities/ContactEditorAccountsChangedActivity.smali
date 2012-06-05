.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final SUBACTIVITY_ADD_NEW_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 67
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    .line 191
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 165
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 168
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 173
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f06007b

    const v12, 0x7f040022

    const/4 v11, 0x0

    const v10, 0x7f060078

    const/4 v9, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 80
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 83
    .local v5, numAccounts:I
    if-gez v5, :cond_0

    .line 84
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot have a negative number of accounts"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :cond_0
    const/4 v8, 0x2

    if-lt v5, v8, :cond_1

    .line 90
    const v8, 0x7f040021

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 93
    .local v7, textView:Landroid/widget/TextView;
    const v8, 0x7f0b01ee

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v8, 0x7f06007a

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 96
    .local v3, button:Landroid/widget/Button;
    const v8, 0x7f0b01f1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v8, 0x7f060079

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 100
    .local v1, accountListView:Landroid/widget/ListView;
    new-instance v8, Lcom/android/contacts/util/AccountsListAdapter;

    sget-object v9, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    .line 102
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    .end local v1           #accountListView:Landroid/widget/ListView;
    .end local v3           #button:Landroid/widget/Button;
    :goto_0
    return-void

    .line 104
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_1
    if-ne v5, v9, :cond_2

    .line 107
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 110
    .restart local v7       #textView:Landroid/widget/TextView;
    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 111
    .local v4, leftButton:Landroid/widget/Button;
    const v8, 0x7f06007c

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 113
    .local v6, rightButton:Landroid/widget/Button;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 114
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const v8, 0x7f0b01ed

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v8, 0x7f0b01f1

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v8, 0x104000a

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;

    invoke-direct {v8, p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 134
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v4           #leftButton:Landroid/widget/Button;
    .end local v6           #rightButton:Landroid/widget/Button;
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, v12}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setContentView(I)V

    .line 136
    invoke-virtual {p0, v10}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 137
    .restart local v7       #textView:Landroid/widget/TextView;
    invoke-virtual {p0, v13}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 138
    .restart local v4       #leftButton:Landroid/widget/Button;
    const v8, 0x7f06007c

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 140
    .restart local v6       #rightButton:Landroid/widget/Button;
    const v8, 0x7f0b01ec

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v8, 0x7f0b01ef

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v8, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v8, 0x7f0b01f0

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
