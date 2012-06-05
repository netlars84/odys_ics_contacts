.class public Lcom/android/contacts/activities/JoinContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinContactActivity.java"


# static fields
.field public static final EXTRA_TARGET_CONTACT_ID:Ljava/lang/String; = "com.android.contacts.action.CONTACT_ID"

.field public static final JOIN_CONTACT:Ljava/lang/String; = "com.android.contacts.action.JOIN_CONTACT"

.field private static final KEY_TARGET_CONTACT_ID:Ljava/lang/String; = "targetContactId"

.field private static final TAG:Ljava/lang/String; = "JoinContactActivity"


# instance fields
.field private mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private setupActionListener()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactId(J)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    new-instance v1, Lcom/android/contacts/activities/JoinContactActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/JoinContactActivity$1;-><init>(Lcom/android/contacts/activities/JoinContactActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 154
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/JoinContactListFragment;->onPickerResult(Landroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 65
    instance-of v0, p1, Lcom/android/contacts/list/JoinContactListFragment;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/android/contacts/list/JoinContactListFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 67
    invoke-direct {p0}, Lcom/android/contacts/activities/JoinContactActivity;->setupActionListener()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 77
    iget-wide v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 78
    const-string v2, "JoinContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is missing required extra: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const v2, 0x7f040069

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->setContentView(I)V

    .line 86
    const v2, 0x7f0b0030

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/JoinContactActivity;->setTitle(I)V

    .line 88
    iget-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    if-nez v2, :cond_2

    .line 89
    new-instance v2, Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/JoinContactListFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f060084

    iget-object v4, p0, Lcom/android/contacts/activities/JoinContactActivity;->mListFragment:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 97
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 133
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/JoinContactActivity;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/activities/JoinContactActivity;->finish()V

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    .line 150
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/activities/JoinContactActivity;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    return-void
.end method
