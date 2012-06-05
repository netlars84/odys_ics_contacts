.class Lcom/android/contacts/list/ContactTileAdapter$1;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/contacts/list/ContactTileView;)V
    .locals 3
    .parameter "contactTileView"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/contacts/ContactsUtils;->getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    .line 484
    :cond_0
    return-void
.end method
