.class public Lcom/android/contacts/model/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 335
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    .line 336
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "column"
    .parameter "titleRes"
    .parameter "inputType"

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 340
    iput p3, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    .line 341
    return-void
.end method


# virtual methods
.method public setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "longForm"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    .line 355
    return-object p0
.end method

.method public setMinLines(I)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "minLines"

    .prologue
    .line 359
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    .line 360
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "optional"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    .line 345
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .locals 0
    .parameter "shortForm"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    .line 350
    return-object p0
.end method
