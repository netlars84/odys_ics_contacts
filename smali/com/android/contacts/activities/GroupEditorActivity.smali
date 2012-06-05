.class public Lcom/android/contacts/activities/GroupEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# static fields
.field public static final ACTION_ADD_MEMBER_COMPLETED:Ljava/lang/String; = "addMemberCompleted"

.field public static final ACTION_REMOVE_MEMBER_COMPLETED:Ljava/lang/String; = "removeMemberCompleted"

.field public static final ACTION_SAVE_COMPLETED:Ljava/lang/String; = "saveCompleted"

.field private static final TAG:Ljava/lang/String; = "GroupEditorActivity"


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 132
    new-instance v0, Lcom/android/contacts/activities/GroupEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupEditorActivity$2;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    return-object v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->save(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v6, "saveCompleted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const v6, 0x7f04005b

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/GroupEditorActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 63
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 66
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 68
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04004c

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, customActionBarView:Landroid/view/View;
    const v6, 0x7f0600cb

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, saveMenuItem:Landroid/view/View;
    new-instance v6, Lcom/android/contacts/activities/GroupEditorActivity$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/GroupEditorActivity$1;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/16 v6, 0x10

    const/16 v7, 0x1a

    invoke-virtual {v1, v6, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 84
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #saveMenuItem:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0600df

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/group/GroupEditorFragment;

    iput-object v6, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 86
    iget-object v6, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-virtual {v6, v7}, Lcom/android/contacts/group/GroupEditorFragment;->setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V

    .line 87
    iget-object v6, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/group/GroupEditorFragment;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 93
    .local v5, uri:Landroid/net/Uri;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v0, v5, v7}, Lcom/android/contacts/group/GroupEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-string v0, "GroupEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 120
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    goto :goto_0
.end method
