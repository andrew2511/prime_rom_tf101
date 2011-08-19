.class public final Lcom/google/android/common/html/parser/HTML$Element;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HTML$Element$Flow;
    }
.end annotation


# static fields
.field public static final NO_TYPE:I = 0x0

.field public static final TABLE_TYPE:I = 0x1


# instance fields
.field private final breaksFlow:Z

.field private final empty:Z

.field private final flow:Lcom/google/android/common/html/parser/HTML$Element$Flow;

.field private final name:Ljava/lang/String;

.field private final optionalEndTag:Z

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 7
    .parameter "name"
    .parameter "type"
    .parameter "empty"
    .parameter "optionalEndTag"
    .parameter "breaksFlow"

    .prologue
    .line 71
    sget-object v6, Lcom/google/android/common/html/parser/HTML$Element$Flow;->NONE:Lcom/google/android/common/html/parser/HTML$Element$Flow;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/common/html/parser/HTML$Element;-><init>(Ljava/lang/String;IZZZLcom/google/android/common/html/parser/HTML$Element$Flow;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZLcom/google/android/common/html/parser/HTML$Element$Flow;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "empty"
    .parameter "optionalEndTag"
    .parameter "breaksFlow"
    .parameter "flow"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Element name can not be null"

    invoke-static {p1, v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Element flow can not be null"

    invoke-static {p6, v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/google/android/common/html/parser/HTML$Element;->type:I

    .line 60
    iput-boolean p3, p0, Lcom/google/android/common/html/parser/HTML$Element;->empty:Z

    .line 61
    iput-boolean p4, p0, Lcom/google/android/common/html/parser/HTML$Element;->optionalEndTag:Z

    .line 62
    iput-boolean p5, p0, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow:Z

    .line 63
    iput-object p6, p0, Lcom/google/android/common/html/parser/HTML$Element;->flow:Lcom/google/android/common/html/parser/HTML$Element$Flow;

    .line 64
    return-void
.end method


# virtual methods
.method public breaksFlow()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 117
    if-ne p1, p0, :cond_0

    .line 118
    const/4 v2, 0x1

    .line 124
    :goto_0
    return v2

    .line 120
    :cond_0
    instance-of v2, p1, Lcom/google/android/common/html/parser/HTML$Element;

    if-eqz v2, :cond_1

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/google/android/common/html/parser/HTML$Element;

    move-object v1, v0

    .line 122
    .local v1, that:Lcom/google/android/common/html/parser/HTML$Element;
    iget-object v2, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 124
    .end local v1           #that:Lcom/google/android/common/html/parser/HTML$Element;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFlow()Lcom/google/android/common/html/parser/HTML$Element$Flow;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->flow:Lcom/google/android/common/html/parser/HTML$Element$Flow;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->empty:Z

    return v0
.end method

.method public isEndTagOptional()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->optionalEndTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method
