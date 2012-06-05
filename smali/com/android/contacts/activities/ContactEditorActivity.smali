.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# static fields
.field public static final ACTION_JOIN_COMPLETED:Ljava/lang/String; = "joinCompleted"

.field public static final ACTION_SAVE_COMPLETED:Ljava/lang/String; = "saveCompleted"

.field public static final INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED:Ljava/lang/String; = "finishActivityOnSaveCompleted"

.field private static final TAG:Ljava/lang/String; = "ContactEditorActivity"


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 157
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 155
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 71
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v7, "finishActivityOnSaveCompleted"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    .line 82
    const-string v7, "joinCompleted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 120
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v7, "saveCompleted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_1
    const v7, 0x7f040023

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 95
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 98
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 100
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f04004c

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, customActionBarView:Landroid/view/View;
    const v7, 0x7f0600cb

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 102
    .local v5, saveMenuItem:Landroid/view/View;
    new-instance v7, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const/16 v7, 0x10

    const/16 v8, 0x1a

    invoke-virtual {v1, v7, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 112
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 115
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #saveMenuItem:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f06007d

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 117
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v7, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 118
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 119
    .local v6, uri:Landroid/net/Uri;
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v0, v6, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string v0, "ContactEditorActivity"

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

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 133
    :cond_2
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "saveSucceeded"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method
