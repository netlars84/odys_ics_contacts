.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field private mBody:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mExpanded:Z

.field private mHasPhotoEditor:Z

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 63
    return-void
.end method


# virtual methods
.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public hasPhotoEditor()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f06010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    .line 70
    const v0, 0x7f060046

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    .line 72
    const v0, 0x7f060110

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    .line 73
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method setExpanded(Z)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 133
    .local v0, newValue:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    if-ne v0, v1, :cond_1

    .line 137
    :goto_1
    return-void

    .line 130
    .end local v0           #newValue:Z
    :cond_0
    move v0, p1

    .restart local v0       #newValue:Z
    goto :goto_0

    .line 134
    :cond_1
    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 135
    iget-object v4, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 135
    goto :goto_2

    :cond_3
    move v3, v2

    .line 136
    goto :goto_3
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .parameter "groupMetaData"

    .prologue
    .line 77
    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .parameter "hasPhotoEditor"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 89
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PhotoEditorView;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end method
