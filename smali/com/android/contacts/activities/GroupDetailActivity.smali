.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupDetailActivity"


# instance fields
.field private mAccountTypeString:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mShowGroupSourceInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/GroupDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/android/contacts/group/GroupDetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 64
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 65
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setShowGroupSourceInActionBar(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 67
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->closeActivityAfterDelete(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 72
    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 118
    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 164
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    .line 168
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    iget-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    if-nez v6, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v4

    .line 130
    :cond_1
    const v6, 0x7f06014a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 131
    .local v1, groupSourceMenuItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 134
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 135
    .local v3, manager:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 137
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 139
    :cond_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, groupSourceView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mAccountTypeString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mDataSet:Ljava/lang/String;

    invoke-static {p0, v2, v4, v6}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v4, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;Lcom/android/contacts/model/AccountType;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 156
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v4, v5

    .line 157
    goto :goto_0
.end method
