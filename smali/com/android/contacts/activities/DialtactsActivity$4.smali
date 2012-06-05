.class Lcom/android/contacts/activities/DialtactsActivity$4;
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
    .line 290
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$4;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 293
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$4;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v0, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;I)V

    .line 295
    return v1
.end method
