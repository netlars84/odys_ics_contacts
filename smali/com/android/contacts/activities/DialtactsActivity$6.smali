.class Lcom/android/contacts/activities/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$900(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 331
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 2
    .parameter "dataUri"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 325
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method
