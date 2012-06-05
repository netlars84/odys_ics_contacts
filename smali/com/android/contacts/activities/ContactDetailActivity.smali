.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_FINISH_ACTIVITY_ON_UP_SELECTED:Ljava/lang/String; = "finishActivityOnUpSelected"

.field private static final TAG:Ljava/lang/String; = "ContactDetailActivity"


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mFinishActivityOnUpSelected:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 249
    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setupTitle()V
    .locals 5

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 235
    .local v3, displayName:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, company:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 238
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 241
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, decorView:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 245
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 247
    .end local v2           #decorView:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 120
    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 122
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 83
    .local v8, originalIntent:Landroid/content/Intent;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v0, 0x2680

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 116
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #originalIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    .line 99
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    .line 101
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 108
    .local v6, actionBar:Landroid/app/ActionBar;
    if-eqz v6, :cond_1

    .line 109
    const/16 v0, 0xc

    const/16 v1, 0xe

    invoke-virtual {v6, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 112
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    const-string v0, "ContactDetailActivity"

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 130
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 131
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    .line 168
    .local v0, mCurrentFragment:Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 294
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    .line 137
    const v3, 0x7f06014c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 138
    .local v1, starredMenuItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040051

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    .local v0, starredContainer:Landroid/view/ViewGroup;
    const v3, 0x7f0600af

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 141
    .local v2, starredView:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/contacts/activities/ContactDetailActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/android/contacts/activities/ContactDetailActivity$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v3, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V

    .line 157
    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 158
    const/4 v3, 0x1

    return v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    :cond_0
    return-void
.end method
