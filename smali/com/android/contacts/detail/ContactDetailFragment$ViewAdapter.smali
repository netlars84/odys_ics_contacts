.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x5

.field public static final VIEW_TYPE_DETAIL_ENTRY:I = 0x0

.field public static final VIEW_TYPE_HEADER_ENTRY:I = 0x1

.field public static final VIEW_TYPE_KIND_TITLE_ENTRY:I = 0x2

.field public static final VIEW_TYPE_NETWORK_TITLE_ENTRY:I = 0x3

.field public static final VIEW_TYPE_SEPARATOR_ENTRY:I = 0x4


# instance fields
.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1697
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 1707
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1443
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 15
    .parameter "position"
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 1596
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1597
    .local v5, resources:Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1599
    .local v10, views:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1600
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1601
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1606
    :goto_0
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-direct {p0, v11, v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1610
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1611
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->footerLine:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1618
    :goto_1
    iget-object v12, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v11, v12}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1623
    .local v2, presenceIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1624
    .local v3, presenceIconView:Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1625
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1631
    :goto_3
    iget-object v1, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v1, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 1633
    .local v1, actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setTag(Ljava/lang/Object;)V

    .line 1634
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 1635
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v11, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1638
    iget-object v8, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 1639
    .local v8, secondaryActionView:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 1640
    .local v7, secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 1641
    .local v6, secondaryActionDescription:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 1642
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1643
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1654
    :cond_0
    :goto_4
    iget-object v9, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 1655
    .local v9, secondaryActionViewContainer:Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    if-eqz v7, :cond_7

    .line 1656
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1657
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1658
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1659
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isInSubSection()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v11

    :goto_6
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v13}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1673
    iget-object v4, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 1674
    .local v4, primaryActionView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1679
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1684
    return-void

    .line 1603
    .end local v1           #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v2           #presenceIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #presenceIconView:Landroid/widget/ImageView;
    .end local v4           #primaryActionView:Landroid/view/View;
    .end local v6           #secondaryActionDescription:Ljava/lang/String;
    .end local v7           #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .end local v8           #secondaryActionView:Landroid/widget/ImageView;
    .end local v9           #secondaryActionViewContainer:Landroid/view/View;
    :cond_1
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1614
    :cond_2
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1618
    :cond_3
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 1628
    .restart local v2       #presenceIcon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #presenceIconView:Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1644
    .restart local v1       #actionsButtonContainer:Lcom/android/contacts/detail/ActionsViewContainer;
    .restart local v6       #secondaryActionDescription:Ljava/lang/String;
    .restart local v7       #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #secondaryActionView:Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_6

    .line 1645
    const v11, 0x7f0200aa

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1647
    const v11, 0x7f0b014d

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1648
    :cond_6
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 1649
    const v11, 0x7f0200a9

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1651
    const v11, 0x7f0b014c

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1662
    .restart local v9       #secondaryActionViewContainer:Landroid/view/View;
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1663
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1667
    :cond_8
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v11

    goto/16 :goto_6
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1578
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 1579
    move-object v1, p2

    .line 1580
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1591
    .local v2, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 1592
    return-object v1

    .line 1583
    .end local v1           #v:Landroid/view/View;
    .end local v2           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1586
    .restart local v1       #v:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1588
    .restart local v2       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1472
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v0, 0x7f040039

    .line 1475
    .local v0, desiredLayoutResourceId:I
    :goto_0
    const/4 v3, 0x0

    .line 1476
    .local v3, result:Landroid/view/View;
    const/4 v4, 0x0

    .line 1481
    .local v4, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 1483
    .restart local v4       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v5, v0, :cond_0

    .line 1484
    move-object v3, p1

    .line 1489
    :cond_0
    if-nez v3, :cond_1

    .line 1490
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1491
    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v4           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v4, v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 1492
    .restart local v4       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1495
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v6

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v5, v6, v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1497
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v6

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v5, v6, v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 1500
    iget-object v5, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 1501
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v6

    iget-object v7, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    invoke-static {v5, v6, v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    .line 1505
    :cond_2
    iget-object v1, v4, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/CheckBox;

    .line 1506
    .local v1, favoritesStar:Landroid/widget/CheckBox;
    if-eqz v1, :cond_3

    .line 1507
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V

    .line 1508
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    .line 1509
    .local v2, lookupUri:Landroid/net/Uri;
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    .end local v2           #lookupUri:Landroid/net/Uri;
    :cond_3
    return-object v3

    .line 1472
    .end local v0           #desiredLayoutResourceId:I
    .end local v1           #favoritesStar:Landroid/widget/CheckBox;
    .end local v3           #result:Landroid/view/View;
    .end local v4           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_4
    const v0, 0x7f04003a

    goto :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1539
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    .line 1541
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1543
    .local v1, result:Landroid/view/View;
    :goto_0
    const v3, 0x7f06009d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1544
    .local v2, titleTextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    return-object v1

    .line 1541
    .end local v1           #result:Landroid/view/View;
    .end local v2           #titleTextView:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .line 1554
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    if-eqz p2, :cond_0

    .line 1555
    move-object v1, p2

    .line 1556
    .local v1, result:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    .line 1566
    .local v2, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1569
    return-object v1

    .line 1558
    .end local v1           #result:Landroid/view/View;
    .end local v2           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1560
    .restart local v1       #result:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    .line 1561
    .restart local v2       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1562
    const v3, 0x7f06003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 1527
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    .line 1528
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1531
    .local v1, result:Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->isInSubSection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1535
    return-object v1

    .line 1528
    .end local v1           #result:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001d

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1531
    .restart local v1       #result:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 1687
    if-ne p2, v0, :cond_0

    .line 1688
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1689
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1695
    :goto_0
    return-void

    .line 1691
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1692
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1693
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1443
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1743
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 1744
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    .line 1747
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1466
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1464
    :goto_0
    return-object v0

    .line 1458
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1460
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1462
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1464
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1738
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1758
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
