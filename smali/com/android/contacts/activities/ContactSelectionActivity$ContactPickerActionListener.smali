.class final Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method private launchAddToContactDialog(Landroid/os/Bundle;)Z
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 446
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v5

    .line 449
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 450
    .local v2, intentExtraKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    .line 451
    .local v3, numIntentExtraKeys:I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    .line 452
    const-string v6, "phone"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "phone_type"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 454
    .local v1, hasPhone:Z
    :goto_1
    const-string v6, "email"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "email_type"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    .line 456
    .local v0, hasEmail:Z
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v5, v4

    goto :goto_0

    .end local v0           #hasEmail:Z
    .end local v1           #hasPhone:Z
    :cond_3
    move v1, v5

    .line 452
    goto :goto_1

    .restart local v1       #hasPhone:Z
    :cond_4
    move v0, v5

    .line 454
    goto :goto_2

    .line 457
    .end local v1           #hasPhone:Z
    :cond_5
    if-ne v3, v4, :cond_0

    .line 458
    const-string v6, "phone"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "email"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method public onCreateNewContactAction()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    #calls: Lcom/android/contacts/activities/ContactSelectionActivity;->startCreateNewContactActivity()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$500(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    .line 407
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 5
    .parameter "contactLookupUri"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->launchAddToContactDialog(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const-class v3, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 427
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 432
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 437
    return-void
.end method
