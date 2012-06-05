.class Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;
.super Ljava/lang/Object;
.source "ContactTileSecondaryTargetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileSecondaryTargetView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileSecondaryTargetView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileSecondaryTargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;->this$0:Lcom/android/contacts/list/ContactTileSecondaryTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;->this$0:Lcom/android/contacts/list/ContactTileSecondaryTargetView;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileSecondaryTargetView$1;->this$0:Lcom/android/contacts/list/ContactTileSecondaryTargetView;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactTileSecondaryTargetView;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
