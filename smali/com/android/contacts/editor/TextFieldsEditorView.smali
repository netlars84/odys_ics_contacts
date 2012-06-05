.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupExpansionView(ZZ)V
    .locals 2
    .parameter "shouldExist"
    .parameter "collapsed"

    .prologue
    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f02006e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_1
    return-void

    .line 133
    :cond_0
    const v0, 0x7f02006d

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public acquireEditorBounds(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "bounds"

    .prologue
    .line 282
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v2

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v2, v1

    .line 285
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllFields()V
    .locals 5

    .prologue
    .line 367
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v0, arr$:[Landroid/widget/EditText;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 370
    .local v1, fieldEditText:Landroid/widget/EditText;
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v0           #arr$:[Landroid/widget/EditText;
    .end local v1           #fieldEditText:Landroid/widget/EditText;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 258
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 260
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 264
    .end local v0           #editText:Landroid/widget/EditText;
    :goto_1
    return v2

    .line 258
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 89
    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 90
    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0600fb

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 318
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 319
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 321
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 323
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 324
    .local v1, numChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 325
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 300
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 302
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 304
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 305
    .local v1, numChildren:I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 306
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 307
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 304
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    .line 310
    .restart local v0       #i:I
    .restart local v1       #numChildren:I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 143
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, firstField:Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 146
    .local v0, anyFieldHasFocus:Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, arr$:[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 147
    .local v2, editText:Landroid/widget/EditText;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 148
    move-object v3, v2

    .line 150
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    const/4 v0, 0x1

    .line 155
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 159
    .end local v0           #anyFieldHasFocus:Z
    .end local v1           #arr$:[Landroid/widget/EditText;
    .end local v3           #firstField:Landroid/widget/EditText;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void

    .line 146
    .restart local v0       #anyFieldHasFocus:Z
    .restart local v1       #arr$:[Landroid/widget/EditText;
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #firstField:Landroid/widget/EditText;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 120
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 121
    goto :goto_1

    .line 124
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 125
    return-void

    :cond_2
    move v2, v3

    .line 124
    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 21
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 164
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v4, arr$:[Landroid/widget/EditText;
    array-length v15, v4

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_0

    aget-object v9, v4, v12

    .line 168
    .local v9, fieldEditText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 171
    .end local v4           #arr$:[Landroid/widget/EditText;
    .end local v9           #fieldEditText:Landroid/widget/EditText;
    .end local v12           #i$:I
    .end local v15           #len$:I
    :cond_0
    const/4 v11, 0x0

    .line 173
    .local v11, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    .line 174
    .local v8, fieldCount:I
    new-array v0, v8, [Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 175
    const/4 v13, 0x0

    .local v13, index:I
    :goto_1
    if-ge v13, v8, :cond_10

    .line 176
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountType$EditField;

    .line 177
    .local v7, field:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 178
    .local v10, fieldView:Landroid/widget/EditText;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    invoke-virtual {v7}, Lcom/android/contacts/model/AccountType$EditField;->isMultiLine()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, -0x2

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 183
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 187
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x1030044

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 188
    const/16 v18, 0x30

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    aput-object v10, v18, v13

    .line 190
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setId(I)V

    .line 191
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 192
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 194
    :cond_1
    iget v14, v7, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    .line 195
    .local v14, inputType:I
    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 196
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 203
    :cond_2
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 206
    iget-object v5, v7, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 207
    .local v5, column:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 208
    .local v16, value:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-eqz v16, :cond_5

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    .line 214
    new-instance v18, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    if-nez p4, :cond_6

    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 232
    iget-boolean v0, v7, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 233
    const/4 v11, 0x1

    .line 234
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 248
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 178
    .end local v5           #column:Ljava/lang/String;
    .end local v14           #inputType:I
    .end local v16           #value:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v18, v0

    goto/16 :goto_2

    .line 185
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_3

    .line 211
    .restart local v5       #column:Ljava/lang/String;
    .restart local v14       #inputType:I
    .restart local v16       #value:Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    .line 230
    :cond_6
    const/16 v18, 0x0

    goto :goto_5

    .line 235
    :cond_7
    const/16 v18, 0x8

    goto :goto_6

    .line 236
    :cond_8
    iget-boolean v0, v7, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 237
    const/4 v11, 0x1

    .line 238
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v18, 0x8

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    goto :goto_8

    .line 242
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    iget-boolean v0, v7, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    const/4 v6, 0x1

    .line 243
    .local v6, couldHide:Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    if-eqz v6, :cond_d

    const/16 v17, 0x1

    .line 244
    .local v17, willHide:Z
    :goto_a
    if-eqz v17, :cond_e

    const/16 v18, 0x8

    :goto_b
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 245
    if-nez v11, :cond_b

    if-eqz v6, :cond_f

    :cond_b
    const/4 v11, 0x1

    :goto_c
    goto :goto_7

    .line 242
    .end local v6           #couldHide:Z
    .end local v17           #willHide:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_9

    .line 243
    .restart local v6       #couldHide:Z
    :cond_d
    const/16 v17, 0x0

    goto :goto_a

    .line 244
    .restart local v17       #willHide:Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_b

    .line 245
    :cond_f
    const/4 v11, 0x0

    goto :goto_c

    .line 252
    .end local v5           #column:Ljava/lang/String;
    .end local v6           #couldHide:Z
    .end local v7           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v10           #fieldView:Landroid/widget/EditText;
    .end local v14           #inputType:I
    .end local v16           #value:Ljava/lang/String;
    .end local v17           #willHide:Z
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-nez p4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 254
    return-void

    .line 253
    :cond_11
    const/16 v18, 0x0

    goto :goto_d
.end method
