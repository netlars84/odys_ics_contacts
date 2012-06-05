.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# static fields
.field private static final DEFAULT_HOUR:I = 0x8


# instance fields
.field private mDateView:Landroid/widget/Button;

.field private mNoDateString:Ljava/lang/String;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v9, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 189
    .local v9, column:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, oldValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 192
    .local v13, kind:Lcom/android/contacts/model/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 193
    .local v8, calendar:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 196
    .local v12, defaultYear:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v7

    .line 199
    .local v7, isYearOptional:Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    move v4, v12

    .line 202
    .local v4, oldYear:I
    const/4 v5, 0x0

    .line 203
    .local v5, oldMonth:I
    const/4 v6, 0x1

    .line 227
    .local v6, oldDay:I
    :goto_0
    new-instance v3, Lcom/android/contacts/editor/EventFieldEditorView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v13, v9}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    .line 250
    .local v3, callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    new-instance v1, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 252
    .end local v3           #callBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .end local v4           #oldYear:I
    .end local v5           #oldMonth:I
    .end local v6           #oldDay:I
    :goto_1
    return-object v1

    .line 205
    :cond_0
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 207
    .local v15, position:Ljava/text/ParsePosition;
    iget-object v2, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 208
    .local v10, date1:Ljava/util/Date;
    if-nez v10, :cond_1

    .line 210
    invoke-static {v14}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 212
    :cond_1
    if-eqz v10, :cond_2

    .line 213
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 215
    .restart local v4       #oldYear:I
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 216
    .restart local v5       #oldMonth:I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6       #oldDay:I
    goto :goto_0

    .line 218
    .end local v4           #oldYear:I
    .end local v5           #oldMonth:I
    .end local v6           #oldDay:I
    :cond_2
    iget-object v2, v13, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v11

    .line 220
    .local v11, date2:Ljava/util/Date;
    if-nez v11, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 222
    if-eqz v7, :cond_4

    const/4 v4, 0x0

    .line 223
    .restart local v4       #oldYear:I
    :goto_2
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 224
    .restart local v5       #oldMonth:I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6       #oldDay:I
    goto :goto_0

    .end local v4           #oldYear:I
    .end local v5           #oldMonth:I
    .end local v6           #oldDay:I
    :cond_4
    move v4, v12

    .line 222
    goto :goto_2
.end method

.method public static getDefaultHourForBirthday()I
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0x8

    return v0
.end method

.method private rebuildDateView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    .line 119
    .local v2, editField:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v0, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 120
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, data:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v1, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 270
    .local v0, column:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 139
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, dialogId:I
    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001a
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EventEditType;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EventEditType;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 80
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    .line 82
    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    .line 83
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0183

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    .line 85
    const v1, 0x7f0600c0

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 158
    .local v7, column:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, oldValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v10

    .line 161
    .local v10, kind:Lcom/android/contacts/model/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 165
    .local v1, defaultYear:I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    .line 167
    .local v9, isYearOptional:Z
    if-nez v9, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 169
    .local v12, position:Ljava/text/ParsePosition;
    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 172
    .local v8, date2:Ljava/util/Date;
    if-nez v8, :cond_1

    .line 182
    .end local v8           #date2:Ljava/util/Date;
    .end local v12           #position:Ljava/text/ParsePosition;
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v8       #date2:Ljava/util/Date;
    .restart local v12       #position:Ljava/text/ParsePosition;
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 179
    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_0
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 97
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 112
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 115
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
