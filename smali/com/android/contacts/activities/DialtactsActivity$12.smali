.class Lcom/android/contacts/activities/DialtactsActivity$12;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;


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
    .line 757
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$12;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/activities/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 763
    return-void
.end method
