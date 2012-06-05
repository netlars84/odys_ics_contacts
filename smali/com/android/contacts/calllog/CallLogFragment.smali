.class public Lcom/android/contacts/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CallLogFragment"


# instance fields
.field private mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mEmptyLoaderRunning:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mScrollToTop:Z

.field private mShowOptionsMenu:Z

.field private mShowingVoicemailOnly:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 142
    :cond_0
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->invalidateCache()V

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startCallsQuery()V

    .line 385
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 386
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V

    .line 387
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 392
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 394
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 395
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 403
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 397
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallLogFragment"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .parameter "voicemailSourcesAvailable"

    .prologue
    .line 146
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 263
    return-void
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 413
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 408
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .parameter "onEntry"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 423
    if-nez p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 427
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 429
    :cond_1
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 435
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .parameter "statusCursor"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 195
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 202
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_1
    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 206
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 208
    :cond_2
    iget-object v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/calllog/CallLogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/calllog/CallLogFragment$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    .line 313
    .local v5, position:I
    if-gez v5, :cond_0

    .line 317
    const/4 v5, 0x0

    .line 319
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 320
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 321
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 331
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "sip"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .local v3, intent:Landroid/content/Intent;
    :goto_1
    const/high16 v6, 0x1080

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/contacts/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 337
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 338
    .local v0, callType:I
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eq v0, v7, :cond_4

    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    .line 342
    :cond_4
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, countryIso:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v6, v4, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .end local v1           #countryIso:Ljava/lang/String;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public fetchCalls()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailOnly()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    goto :goto_0
.end method

.method getAdapter()Lcom/android/contacts/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 108
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 110
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 111
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 113
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 114
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 116
    .end local v0           #listView:Landroid/widget/ListView;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 117
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 268
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 269
    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 158
    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 160
    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 161
    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 163
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 240
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 241
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 307
    :goto_0
    return v0

    .line 293
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/ClearCallLogDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchVoicemailOnly()V

    .line 298
    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    .line 303
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x7f06013a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 228
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v1, :cond_0

    .line 276
    const v1, 0x7f06013c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 279
    .local v0, itemDeleteAll:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 281
    const v1, 0x7f06013a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    const v1, 0x7f06013b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    .end local v0           #itemDeleteAll:Landroid/view/MenuItem;
    :cond_0
    return-void

    .restart local v0       #itemDeleteAll:Landroid/view/MenuItem;
    :cond_1
    move v1, v3

    .line 280
    goto :goto_0

    :cond_2
    move v1, v3

    .line 281
    goto :goto_1

    :cond_3
    move v2, v3

    .line 283
    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 192
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 178
    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 184
    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 185
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 233
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 234
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, currentCountryIso:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, v3}, Lcom/android/contacts/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V

    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    .line 172
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 174
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v1, p1, :cond_0

    .line 362
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 370
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 374
    :cond_1
    if-nez p1, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 377
    :cond_2
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .parameter "statusCursor"

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 130
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 131
    .local v0, activeSources:I
    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 132
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 133
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 134
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/android/contacts/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchAllCalls()V

    .line 255
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mShowingVoicemailOnly:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 259
    :cond_0
    return-void
.end method
