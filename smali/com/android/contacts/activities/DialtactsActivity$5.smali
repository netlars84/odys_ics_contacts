.class Lcom/android/contacts/activities/DialtactsActivity$5;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 300
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$5;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    #calls: Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$800(Lcom/android/contacts/activities/DialtactsActivity;)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method
