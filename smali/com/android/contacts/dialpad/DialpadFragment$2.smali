.class Lcom/android/contacts/dialpad/DialpadFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #setter for: Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->access$202(Lcom/android/contacts/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1417
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$2;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #calls: Lcom/android/contacts/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$300(Lcom/android/contacts/dialpad/DialpadFragment;)V

    .line 1418
    return-void
.end method
