.class public Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v2, 0x7f0b0193

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1175
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1178
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1179
    return-void
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1160
    if-nez p1, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1164
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
