.class Lcom/android/contacts/group/GroupEditorFragment$3;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$800(Lcom/android/contacts/group/GroupEditorFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/GroupMemberLoader;->constructLoaderForGroupEditorQuery(Landroid/content/Context;J)Lcom/android/contacts/GroupMemberLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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
    const/4 v9, 0x2

    .line 790
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v8, listExistingMembers:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 792
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 794
    .local v4, contactId:J
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 795
    .local v1, rawContactId:J
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 796
    .local v3, lookupKey:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 797
    .local v6, displayName:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, photoUri:Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 803
    .end local v1           #rawContactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    .end local v4           #contactId:J
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #photoUri:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V
    invoke-static {v0, v8}, Lcom/android/contacts/group/GroupEditorFragment;->access$900(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V

    .line 807
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$3;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 808
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 781
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 811
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
