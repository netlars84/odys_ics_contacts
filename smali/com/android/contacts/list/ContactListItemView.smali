.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;,
        Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition; = null

.field private static final QUICK_CONTACT_BADGE_STYLE:I = 0x10102af


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mCallButtonPadding:I

.field private final mContactsCountTextColor:I

.field protected final mContext:Landroid/content/Context;

.field private mCountView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private final mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private final mLabelViewWidthWeight:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private final mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/high16 v6, -0x100

    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 119
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 133
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 176
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 196
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 197
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 201
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 230
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 236
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    .line 243
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 245
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 247
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    .line 249
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    .line 251
    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 253
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 255
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    .line 257
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    .line 259
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    .line 261
    const/16 v1, 0x15

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 263
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 265
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 267
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    .line 269
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    .line 271
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    .line 273
    const/16 v1, 0x1b

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 275
    const/16 v1, 0x1c

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 278
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->setPadding(IIII)V

    .line 288
    new-instance v1, Lcom/android/contacts/format/PrefixHighlighter;

    const/16 v2, 0x11

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/contacts/format/PrefixHighlighter;-><init>(I)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    .line 291
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 299
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 302
    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 701
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v2, :cond_0

    .line 702
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v2, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    const v6, 0x10102af

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 706
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 709
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    .line 712
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 721
    .end local v0           #a:Landroid/content/res/TypedArray;
    :goto_0
    iput-boolean v8, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 723
    :cond_0
    return-void

    .line 713
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 714
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    .line 717
    .local v1, defaultPhotoViewSize:I
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 718
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-eqz v2, :cond_4

    .end local v1           #defaultPhotoViewSize:I
    :goto_2
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    goto :goto_0

    .restart local v1       #defaultPhotoViewSize:I
    :cond_3
    move v2, v3

    .line 717
    goto :goto_1

    :cond_4
    move v1, v3

    .line 718
    goto :goto_2
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 693
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    .line 695
    :cond_0
    return-void
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 1026
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1027
    .local v0, spannable:Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1029
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    .end local v0           #spannable:Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .parameter "textView"
    .parameter "text"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    .line 676
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 677
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 678
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 679
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 680
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 762
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 767
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 735
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 736
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 739
    :cond_0
    return-void
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    .line 1102
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1104
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1105
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1040
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1041
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1045
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 981
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 982
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 983
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 984
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 985
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 986
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 988
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 989
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 994
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 991
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 894
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 895
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 899
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 901
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 950
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 954
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 955
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 956
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoPosition()Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 835
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 836
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-eqz v0, :cond_1

    .line 837
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x10102af

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0

    .line 839
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 815
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 819
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 820
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01e3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 826
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 828
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1068
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1070
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1072
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1075
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1086
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1087
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1088
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1089
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1090
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallButton()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 929
    :cond_0
    return-void
.end method

.method public hideDisplayName()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1190
    :cond_0
    return-void
.end method

.method public hidePhoneticName()V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 1207
    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 683
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 748
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 749
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 752
    :cond_0
    return-void
.end method

.method protected layoutRightSide(IIII)I
    .locals 5
    .parameter "height"
    .parameter "topBound"
    .parameter "bottomBound"
    .parameter "rightBound"

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v0

    .line 653
    .local v0, buttonWidth:I
    sub-int/2addr p4, v0

    .line 654
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    add-int v2, p4, v0

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    sub-int v3, p1, v3

    invoke-virtual {v1, p4, p2, v2, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    .line 660
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensureVerticalDivider()V

    .line 661
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    sub-int/2addr p4, v1

    .line 662
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerWidth:I

    add-int/2addr v3, p4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerMargin:I

    sub-int v4, p1, v4

    invoke-virtual {v1, p4, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 671
    .end local v0           #buttonWidth:I
    :goto_0
    return p4

    .line 668
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactListItemView;->mVerticalDividerVisible:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 478
    sub-int v6, p5, p3

    .line 479
    .local v6, height:I
    sub-int v16, p4, p2

    .line 482
    .local v16, width:I
    const/4 v14, 0x0

    .line 483
    .local v14, topBound:I
    move v4, v6

    .line 484
    .local v4, bottomBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v8

    .line 485
    .local v8, leftBound:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v17

    sub-int v11, v16, v17

    .line 488
    .local v11, rightBound:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    move/from16 v18, v0

    add-int v18, v18, v8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v11, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v11, v2}, Landroid/view/View;->layout(IIII)V

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v14, v14, v17

    .line 507
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1, v11, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    sub-int v4, v4, v17

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 522
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 523
    .local v10, photoView:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 525
    if-eqz v10, :cond_11

    .line 527
    sub-int v17, v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v9, v14, v17

    .line 528
    .local v9, photoTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v8, v8, v17

    .line 556
    .end local v9           #photoTop:I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v4, v11}, Lcom/android/contacts/list/ContactListItemView;->layoutRightSide(IIII)I

    move-result v11

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 561
    .local v15, totalTextHeight:I
    add-int v17, v4, v14

    sub-int v17, v17, v15

    div-int/lit8 v13, v17, 0x2

    .line 565
    .local v13, textTopBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 574
    :cond_5
    move v12, v8

    .line 575
    .local v12, statusLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 577
    .local v7, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    add-int v18, v8, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int v12, v12, v17

    .line 585
    .end local v7           #iconWidth:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 592
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 593
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 597
    :cond_9
    move v5, v8

    .line 598
    .local v5, dataLeftBound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 607
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    sub-int v11, v11, v17

    .line 626
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v11, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 632
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 633
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 636
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 642
    :cond_f
    return-void

    .line 522
    .end local v5           #dataLeftBound:I
    .end local v10           #photoView:Landroid/view/View;
    .end local v12           #statusLeftBound:I
    .end local v13           #textTopBound:I
    .end local v15           #totalTextHeight:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 534
    .restart local v10       #photoView:Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v8, v8, v17

    goto/16 :goto_1

    .line 540
    :cond_12
    if-eqz v10, :cond_13

    .line 542
    sub-int v17, v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v9, v14, v17

    .line 543
    .restart local v9       #photoTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    sub-int v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v9, v11, v1}, Landroid/view/View;->layout(IIII)V

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v11, v11, v17

    .line 552
    .end local v9           #photoTop:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    move/from16 v17, v0

    add-int v8, v8, v17

    goto/16 :goto_1

    .line 617
    .restart local v5       #dataLeftBound:I
    .restart local v12       #statusLeftBound:I
    .restart local v13       #textTopBound:I
    .restart local v15       #totalTextHeight:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    add-int v5, v8, v17

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v5, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v17, v0

    add-int v5, v5, v17

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 323
    const/4 v9, 0x0

    invoke-static {v9, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v6

    .line 325
    .local v6, specWidth:I
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v9, :cond_c

    .line 326
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v5, v9, v10

    .line 331
    .local v5, preferredHeight:I
    :goto_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 332
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 333
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 334
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 335
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 336
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 337
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 339
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 344
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v9, :cond_d

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v10, v11

    sub-int v1, v9, v10

    .line 354
    .local v1, effectiveWidth:I
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 355
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 358
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 361
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 362
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 365
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 372
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 373
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 374
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v8, v1, v9

    .line 375
    .local v8, totalWidth:I
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v10, v11

    div-int v0, v9, v10

    .line 377
    .local v0, dataWidth:I
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v10, v11

    div-int v3, v9, v10

    .line 392
    .end local v8           #totalWidth:I
    .local v3, labelWidth:I
    :goto_2
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 393
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 395
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 398
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 401
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v10, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v9, v10, :cond_11

    const/high16 v4, 0x4000

    .line 403
    .local v4, mode:I
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 405
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 407
    .end local v4           #mode:I
    :cond_4
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 409
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 410
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 413
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 417
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 418
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->measure(II)V

    .line 419
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 422
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 425
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 426
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v1, v9

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int v7, v9, v10

    .line 431
    .local v7, statusWidth:I
    :goto_4
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 433
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 438
    .end local v7           #statusWidth:I
    :cond_7
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v2, v9, v10

    .line 442
    .local v2, height:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 443
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    .line 448
    :cond_8
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 451
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v9, :cond_9

    .line 452
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v9

    .line 456
    :cond_9
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 459
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v9, :cond_b

    .line 460
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/high16 v10, 0x4000

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 463
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v9, :cond_a

    .line 464
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/high16 v10, -0x8000

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v12, 0x4000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 468
    :cond_a
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 470
    iget v9, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    .line 473
    :cond_b
    invoke-virtual {p0, v6, v2}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 474
    return-void

    .line 328
    .end local v0           #dataWidth:I
    .end local v1           #effectiveWidth:I
    .end local v2           #height:I
    .end local v3           #labelWidth:I
    .end local v5           #preferredHeight:I
    :cond_c
    iget v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .restart local v5       #preferredHeight:I
    goto/16 :goto_0

    .line 348
    :cond_d
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v10

    sub-int v1, v9, v10

    .restart local v1       #effectiveWidth:I
    goto/16 :goto_1

    .line 380
    :cond_e
    move v0, v1

    .line 381
    .restart local v0       #dataWidth:I
    const/4 v3, 0x0

    .restart local v3       #labelWidth:I
    goto/16 :goto_2

    .line 384
    .end local v0           #dataWidth:I
    .end local v3           #labelWidth:I
    :cond_f
    const/4 v0, 0x0

    .line 385
    .restart local v0       #dataWidth:I
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 386
    move v3, v1

    .restart local v3       #labelWidth:I
    goto/16 :goto_2

    .line 388
    .end local v3           #labelWidth:I
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #labelWidth:I
    goto/16 :goto_2

    .line 401
    :cond_11
    const/high16 v4, -0x8000

    goto/16 :goto_3

    .line 429
    :cond_12
    move v7, v1

    .restart local v7       #statusWidth:I
    goto/16 :goto_4
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 853
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 854
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .parameter "keepHorizontalPadding"
    .parameter "keepVerticalPadding"

    .prologue
    const/4 v1, 0x0

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 866
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 867
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 868
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 870
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 874
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 876
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    .line 1312
    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1304
    return-void
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    .line 1121
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1123
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    .line 1003
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    :cond_1
    :goto_0
    return-void

    .line 1008
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1010
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setDefaultPhotoViewSize(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 726
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 727
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 775
    return-void
.end method

.method public setHighlightedPrefix([C)V
    .locals 0
    .parameter "upperCasePrefix"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 886
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 966
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 972
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "callButtonClickListener"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 309
    return-void
.end method

.method public setPhoneticName([CI)V
    .locals 2
    .parameter "text"
    .parameter "size"

    .prologue
    .line 935
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 941
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 942
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .parameter "photoPosition"

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1316
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1148
    if-eqz p1, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1155
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    :cond_1
    :goto_0
    return-void

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 317
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 784
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 785
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 786
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 787
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 791
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    .line 792
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 799
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    .line 809
    :goto_0
    return-void

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 802
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 805
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 807
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_0
.end method

.method public setSelectionBoundsHorizontalMargin(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1327
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    .line 1328
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    .line 1329
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1054
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "unknownNameText"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 313
    return-void
.end method

.method public showCallButton(II)V
    .locals 4
    .parameter "id"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    .line 912
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setId(I)V

    .line 913
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setBackgroundResource(I)V

    .line 915
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    const v1, 0x108008d

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 916
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    iget v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButtonPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 917
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 918
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setTag(Ljava/lang/Object;)V

    .line 922
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCallButton:Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 923
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .parameter "cursor"
    .parameter "dataColumnIndex"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1299
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 1300
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 7
    .parameter "cursor"
    .parameter "nameColumnIndex"
    .parameter "displayOrder"

    .prologue
    .line 1168
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, name:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighligher:Lcom/android/contacts/format/PrefixHighlighter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1174
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .parameter "cursor"
    .parameter "phoneticNameColumnIndex"

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1194
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1195
    .local v0, phoneticNameSize:I
    if-eqz v0, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .parameter "cursor"
    .parameter "presenceColumnIndex"
    .parameter "contactStatusColumnIndex"

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1216
    .local v1, presence:I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1217
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1218
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1220
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    const/4 v2, 0x0

    .line 1223
    .local v2, statusMessage:Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1224
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1228
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1229
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1231
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1232
    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 21
    .parameter "cursor"
    .parameter "summarySnippetColumnIndex"

    .prologue
    .line 1238
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, p2

    if-gt v3, v0, :cond_0

    .line 1239
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1292
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1246
    .local v2, columnContent:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1247
    .local v12, extras:Landroid/os/Bundle;
    const-string v3, "deferred_snippeting"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1248
    const-string v3, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1250
    .local v10, displayNameIndex:I
    if-gez v10, :cond_2

    const/4 v3, 0x0

    :goto_1
    const-string v4, "deferred_snippeting_query"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "\u2026"

    const/4 v8, 0x5

    invoke-static/range {v2 .. v8}, Landroid/provider/ContactsContract;->snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1261
    .end local v10           #displayNameIndex:I
    .local v18, snippet:Ljava/lang/String;
    :goto_2
    if-eqz v18, :cond_1

    .line 1262
    const/4 v14, 0x0

    .line 1263
    .local v14, from:I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    .line 1264
    .local v20, to:I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 1265
    .local v19, start:I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 1266
    const/16 v18, 0x0

    .line 1291
    .end local v14           #from:I
    .end local v19           #start:I
    .end local v20           #to:I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    .end local v18           #snippet:Ljava/lang/String;
    .restart local v10       #displayNameIndex:I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1258
    .end local v10           #displayNameIndex:I
    :cond_3
    move-object/from16 v18, v2

    .restart local v18       #snippet:Ljava/lang/String;
    goto :goto_2

    .line 1268
    .restart local v14       #from:I
    .restart local v19       #start:I
    .restart local v20       #to:I
    :cond_4
    const/16 v3, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    .line 1269
    .local v13, firstNl:I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_5

    .line 1270
    add-int/lit8 v14, v13, 0x1

    .line 1272
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1273
    .local v11, end:I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_6

    .line 1274
    const/16 v3, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1275
    .local v16, lastNl:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1276
    move/from16 v20, v16

    .line 1280
    .end local v16           #lastNl:I
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1281
    .local v17, sb:Ljava/lang/StringBuilder;
    move v15, v14

    .local v15, i:I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_8

    .line 1282
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1283
    .local v9, c:C
    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    .line 1285
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1281
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1288
    .end local v9           #c:C
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
