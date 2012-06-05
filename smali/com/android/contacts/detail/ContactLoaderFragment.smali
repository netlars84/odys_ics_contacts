.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final LOADER_ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final LOADER_DETAILS:I = 0x1

.field private static final REQUEST_CODE_PICK_RINGTONE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuShareable:Z

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 177
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method private doPickRingtone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 379
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 383
    return-void

    .line 375
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_0
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"

    .prologue
    .line 334
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v1, uriBundle:Landroid/os/Bundle;
    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 336
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 341
    .local v0, authResponse:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 342
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 345
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .parameter "pickedUri"

    .prologue
    .line 401
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 408
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 409
    return-void

    .line 404
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 351
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 354
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public isContactEditable()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactOptionsChangeEnabled()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactShareable()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUri(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    const/4 v3, 0x1

    .line 151
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 157
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 160
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 148
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 387
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 393
    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 394
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 127
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 220
    const v0, 0x7f10000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 221
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setHasOptionsMenu(Z)V

    .line 136
    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    move v7, v6

    .line 327
    :cond_1
    :goto_1
    return v7

    .line 278
    :pswitch_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v6, v8}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1

    .line 286
    :pswitch_2
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v8, :cond_2

    move v7, v6

    goto :goto_1

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_1

    .line 291
    :pswitch_3
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v8, :cond_3

    move v7, v6

    goto :goto_1

    .line 293
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, lookupKey:Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v8, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 295
    .local v5, shareUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 299
    invoke-direct {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 302
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "text/x-vcard"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b00fc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 308
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, chooseIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f0b00fd

    invoke-static {v8, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 319
    .end local v0           #chooseIntent:Landroid/content/Intent;
    .end local v1           #chooseTitle:Ljava/lang/CharSequence;
    .end local v2           #ex:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #shareUri:Landroid/net/Uri;
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v8, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 320
    iget-boolean v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 321
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v6, v8, v9}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 323
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 276
    :pswitch_data_0
    .packed-switch 0x7f06014d
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 234
    iget-object v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSendToVoicemail()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 236
    iget-object v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 241
    :cond_0
    const v5, 0x7f060151

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 242
    .local v3, optionsSendToVoicemail:Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 243
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 244
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    :cond_1
    const v5, 0x7f060150

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 247
    .local v2, optionsRingtone:Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 248
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    :cond_2
    const v5, 0x7f06014d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 252
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 254
    const v5, 0x7f06014f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    const v5, 0x7f06014e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 258
    .local v4, shareMenu:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 172
    return-void
.end method
