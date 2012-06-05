.class Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 86
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$100(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->onDataReload()V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$300()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v2}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #setter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z
    invoke-static {v0, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$102(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z

    .line 97
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$502(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z

    .line 100
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #calls: Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$600(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    .line 101
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$700(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z
    invoke-static {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-static {}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$300()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v2}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
