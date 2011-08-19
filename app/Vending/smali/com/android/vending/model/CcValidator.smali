.class public Lcom/android/vending/model/CcValidator;
.super Ljava/lang/Object;
.source "CcValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/CcValidator$CcInputKey;
    }
.end annotation


# instance fields
.field private ccDef:Lcom/android/vending/model/CcDefinition;

.field private ccMatchAttempted:Z

.field private final cvc:Ljava/lang/String;

.field private final endMonth:Ljava/lang/String;

.field private final endYear:Ljava/lang/String;

.field private final issueNumber:Ljava/lang/String;

.field private final number:Ljava/lang/String;

.field private final startMonth:Ljava/lang/String;

.field private final startYear:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "number"
    .parameter "cvc"
    .parameter "endMonth"
    .parameter "endYear"

    .prologue
    const/4 v5, 0x0

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/vending/model/CcValidator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "cvc"
    .parameter "endMonth"
    .parameter "endYear"
    .parameter "issueNumber"
    .parameter "startMonth"
    .parameter "startYear"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/model/CcValidator;->ccMatchAttempted:Z

    .line 75
    iput-object p1, p0, Lcom/android/vending/model/CcValidator;->number:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/vending/model/CcValidator;->cvc:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/vending/model/CcValidator;->endMonth:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/vending/model/CcValidator;->endYear:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/vending/model/CcValidator;->issueNumber:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/android/vending/model/CcValidator;->startMonth:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/android/vending/model/CcValidator;->startYear:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private findViablePattern()Lcom/android/vending/model/CcDefinition;
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/vending/model/CcValidator;->ccMatchAttempted:Z

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/model/CcValidator;->ccMatchAttempted:Z

    .line 178
    sget-object v0, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v1, p0, Lcom/android/vending/model/CcValidator;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CcMatcher;->getCcType(Ljava/lang/String;)Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/CcValidator;->ccDef:Lcom/android/vending/model/CcDefinition;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/CcValidator;->ccDef:Lcom/android/vending/model/CcDefinition;

    return-object v0
.end method

.method private validateBasedOnCcDef(Ljava/util/Map;Lcom/android/vending/model/CcDefinition;)V
    .locals 7
    .parameter
    .parameter "ccDef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/model/CcValidator$CcInputKey;",
            "Lcom/android/vending/model/CcMatcher$CcError;",
            ">;",
            "Lcom/android/vending/model/CcDefinition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, errorMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    sget-object v4, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v5, p0, Lcom/android/vending/model/CcValidator;->cvc:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Lcom/android/vending/model/CcMatcher;->validateCvc(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v0

    .line 143
    .local v0, cvcErr:Lcom/android/vending/model/CcMatcher$CcError;
    if-eqz v0, :cond_0

    .line 144
    sget-object v4, Lcom/android/vending/model/CcValidator$CcInputKey;->CVC:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    sget-object v4, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v5, p0, Lcom/android/vending/model/CcValidator;->endMonth:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/vending/model/CcValidator;->endYear:Ljava/lang/String;

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/vending/model/CcMatcher;->validateEndDate(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 150
    .local v1, endDateErr:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    if-eqz v1, :cond_1

    .line 151
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    :cond_1
    sget-object v4, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v5, p0, Lcom/android/vending/model/CcValidator;->startMonth:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/vending/model/CcValidator;->startYear:Ljava/lang/String;

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/vending/model/CcMatcher;->validateStartDate(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 157
    .local v3, startDateErr:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    if-eqz v3, :cond_2

    .line 158
    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    :cond_2
    sget-object v4, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v5, p0, Lcom/android/vending/model/CcValidator;->issueNumber:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Lcom/android/vending/model/CcMatcher;->validateIssueNumber(Lcom/android/vending/model/CcDefinition;Ljava/lang/String;)Lcom/android/vending/model/CcMatcher$CcError;

    move-result-object v2

    .line 164
    .local v2, issueNumberErr:Lcom/android/vending/model/CcMatcher$CcError;
    if-eqz v2, :cond_3

    .line 165
    sget-object v4, Lcom/android/vending/model/CcValidator$CcInputKey;->ISSUE_NUMBER:Lcom/android/vending/model/CcValidator$CcInputKey;

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_3
    return-void
.end method


# virtual methods
.method public getCcType()Lcom/android/vending/model/CcDefinition;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/vending/model/CcValidator;->findViablePattern()Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/vending/model/CcValidator$CcInputKey;",
            "Lcom/android/vending/model/CcMatcher$CcError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v1, errorMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/vending/model/CcValidator$CcInputKey;Lcom/android/vending/model/CcMatcher$CcError;>;"
    invoke-direct {p0}, Lcom/android/vending/model/CcValidator;->findViablePattern()Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    .line 111
    .local v0, ccDef:Lcom/android/vending/model/CcDefinition;
    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0, v1, v0}, Lcom/android/vending/model/CcValidator;->validateBasedOnCcDef(Ljava/util/Map;Lcom/android/vending/model/CcDefinition;)V

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/android/vending/model/CcValidator;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Lcom/android/vending/model/CcValidator$CcInputKey;->NUMBER:Lcom/android/vending/model/CcValidator$CcInputKey;

    sget-object v3, Lcom/android/vending/model/CcMatcher$CcError;->REQUIRED:Lcom/android/vending/model/CcMatcher$CcError;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_1
    sget-object v2, Lcom/android/vending/model/CcMatcher;->MATCHER:Lcom/android/vending/model/CcMatcher;

    iget-object v3, p0, Lcom/android/vending/model/CcValidator;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/CcMatcher;->getCcTypeFromPrefix(Ljava/lang/String;)Lcom/android/vending/model/CcDefinition;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, v1, v0}, Lcom/android/vending/model/CcValidator;->validateBasedOnCcDef(Ljava/util/Map;Lcom/android/vending/model/CcDefinition;)V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v2, Lcom/android/vending/model/CcValidator$CcInputKey;->NUMBER:Lcom/android/vending/model/CcValidator$CcInputKey;

    sget-object v3, Lcom/android/vending/model/CcMatcher$CcError;->INVALID_DATA:Lcom/android/vending/model/CcMatcher$CcError;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
