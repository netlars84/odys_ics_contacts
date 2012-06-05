.class Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field private mShouldShowFastScroller:Z

.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->shouldShowFirstScroller(I)Z

    move-result v0

    .line 167
    .local v0, shouldShow:Z
    iget-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->mShouldShowFastScroller:Z

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    #getter for: Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneFavoriteFragment;->access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 171
    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;->mShouldShowFastScroller:Z

    .line 173
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 177
    return-void
.end method
