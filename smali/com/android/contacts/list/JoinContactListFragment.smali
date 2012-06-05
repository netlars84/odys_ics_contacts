.class public Lcom/android/contacts/list/JoinContactListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/JoinContactListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME_LOADER:I = -0x2

.field private static final KEY_TARGET_CONTACT_ID:Ljava/lang/String; = "targetContactId"


# instance fields
.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private final mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/contacts/list/JoinContactListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/JoinContactListFragment$1;-><init>(Lcom/android/contacts/list/JoinContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setPhotoLoaderEnabled(Z)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQuickContactEnabled(Z)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/JoinContactListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->showTargetContactName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method private onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2
    .parameter "suggestionsCursor"
    .parameter "allContactsCursor"

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 112
    .local v0, adapter:Lcom/android/contacts/list/JoinContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 114
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 115
    return-void
.end method

.method private showTargetContactName(Ljava/lang/String;)V
    .locals 6
    .parameter "displayName"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, activity:Landroid/app/Activity;
    const v3, 0x7f0600ec

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, blurbView:Landroid/widget/TextView;
    const v3, 0x7f0b0031

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, blurb:Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 137
    .local v0, adapter:Lcom/android/contacts/list/JoinContactListAdapter;
    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListAdapter;->setTargetContactId(J)V

    .line 138
    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 142
    const v0, 0x7f04006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 4
    .parameter "position"
    .parameter "id"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 148
    .local v0, adapter:Lcom/android/contacts/list/JoinContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 149
    .local v1, partition:I
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 150
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 161
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    .line 169
    :cond_0
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 99
    return-void
.end method

.method public setTargetContactId(J)V
    .locals 0
    .parameter "targetContactId"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    .line 126
    return-void
.end method

.method protected startLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->configureAdapter()V

    .line 105
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 108
    return-void
.end method
