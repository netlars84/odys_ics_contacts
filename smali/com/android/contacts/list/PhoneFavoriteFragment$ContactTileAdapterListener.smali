.class Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "contactUri"
    .parameter "targetRect"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 139
    :cond_0
    return-void
.end method
