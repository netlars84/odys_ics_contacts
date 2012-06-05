.class public Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ContactDetailViewPagerAdapter.java"


# static fields
.field public static final ABOUT_FRAGMENT_TAG:Ljava/lang/String; = "view-pager-about-fragment"

.field private static final INDEX_ABOUT_FRAGMENT:I = 0x0

.field private static final INDEX_UPDATES_FRAGMENT:I = 0x1

.field private static final MAX_FRAGMENT_VIEW_COUNT:I = 0x2

.field public static final UPDTES_FRAGMENT_TAG:Ljava/lang/String; = "view-pager-updates-fragment"


# instance fields
.field private mAboutFragmentView:Landroid/view/View;

.field private mFragmentViewCount:I

.field private mUpdatesFragmentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 50
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 109
    check-cast p3, Landroid/view/View;

    .end local p3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void
.end method

.method public enableSwipe(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->notifyDataSetChanged()V

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 114
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    if-gt v1, v0, :cond_0

    .line 87
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 96
    packed-switch p2, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    .line 102
    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 118
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 128
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAboutFragmentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    .line 54
    return-void
.end method

.method public setUpdatesFragmentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    .line 58
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 92
    return-void
.end method
