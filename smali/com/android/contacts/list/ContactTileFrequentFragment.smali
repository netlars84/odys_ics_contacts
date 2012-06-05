.class public Lcom/android/contacts/list/ContactTileFrequentFragment;
.super Lcom/android/contacts/list/ContactTileListFragment;
.source "ContactTileFrequentFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileFrequentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const v3, 0x7f04002e

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/contacts/list/ContactTileFrequentFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, listLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileFrequentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0097

    invoke-static {v3, v4}, Lcom/android/contacts/ContactsUtils;->createHeaderView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, headerView:Landroid/view/View;
    const v3, 0x7f060090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .local v0, headerContainer:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    return-object v2
.end method
