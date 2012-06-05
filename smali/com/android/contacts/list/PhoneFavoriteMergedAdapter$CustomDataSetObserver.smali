.class Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "PhoneFavoriteMergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;->this$0:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;->this$0:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method
