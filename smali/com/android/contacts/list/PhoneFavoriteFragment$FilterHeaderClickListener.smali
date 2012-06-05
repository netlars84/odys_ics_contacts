.class Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneFavoriteFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;I)V

    .line 147
    return-void
.end method
