.class public Lcom/mobipocket/common/parser/EllieLexer;
.super Ljava/lang/Object;
.source "EllieLexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/EllieLexer$State;
    }
.end annotation


# instance fields
.field private entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

.field private m_curgroups:I

.field private m_curgrouptable:[B

.field private m_curstate:I

.field private m_curtrans:[B

.field private m_groups:[I

.field private m_grouptable:[[B

.field private m_startstate:I

.field private m_state:I

.field private m_statevalue:I

.field private m_trans:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_startstate:I

    .line 53
    return-void
.end method


# virtual methods
.method public follow_transitions_ex([CILcom/mobipocket/common/parser/EllieLexer$State;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 129
    iget v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    int-to-byte v0, v0

    move v1, v0

    move v2, p2

    move v0, v6

    .line 131
    :goto_0
    if-lez v2, :cond_2

    .line 137
    iget v0, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    aget-char v0, p1, v0

    .line 142
    invoke-static {v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->isIdeographic(C)Z

    move-result v3

    .line 143
    const/16 v4, 0x200c

    if-ne v0, v4, :cond_0

    move v3, v6

    .line 148
    :cond_0
    if-eqz v3, :cond_5

    .line 150
    const/16 v0, 0x81

    .line 161
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curtrans:[B

    iget v4, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    iget v5, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgroups:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgrouptable:[B

    aget-byte v0, v5, v0

    add-int/2addr v0, v4

    aget-byte v0, v3, v0

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    if-ltz v0, :cond_6

    move v0, v6

    :goto_2
    if-nez v0, :cond_7

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    iget v2, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curtrans:[B

    iget v3, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgroups:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgroups:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v6

    aget-byte v1, v2, v1

    iput v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_statevalue:I

    .line 190
    :goto_3
    if-eqz v0, :cond_4

    iget v0, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    if-nez v0, :cond_a

    :cond_4
    move v0, v6

    :goto_4
    return v0

    .line 153
    :cond_5
    if-lt v0, v8, :cond_1

    move v0, v8

    .line 155
    goto :goto_1

    :cond_6
    move v0, v7

    .line 161
    goto :goto_2

    .line 163
    :cond_7
    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    int-to-byte v1, v1

    .line 164
    iget v3, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    sub-int/2addr v3, v6

    iput v3, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    .line 166
    iget v3, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    .line 167
    iget v3, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    if-nez v3, :cond_8

    move v2, v7

    .line 170
    goto :goto_0

    .line 172
    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 184
    :cond_9
    iget v1, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p3, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    .line 185
    const/4 v1, -0x2

    iget v2, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_statevalue:I

    goto :goto_3

    :cond_a
    move v0, v7

    .line 190
    goto :goto_4
.end method

.method public get_action_entry(I)Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;
    .locals 1
    .parameter "st"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get_global_lex_state()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    return v0
.end method

.method public get_state_value()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_statevalue:I

    return v0
.end method

.method public init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V
    .locals 2
    .parameter "lex_table"

    .prologue
    .line 58
    iget-object v0, p1, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->transtable:[[B

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_trans:[[B

    .line 59
    iget-object v0, p1, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->nbgroup:[I

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_groups:[I

    .line 60
    iget-object v0, p1, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->grouptable:[[B

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_grouptable:[[B

    .line 62
    iget v0, p1, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->startstate:I

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_startstate:I

    .line 64
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_trans:[[B

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curtrans:[B

    .line 65
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_groups:[I

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget v0, v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgroups:I

    .line 66
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_grouptable:[[B

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgrouptable:[B

    .line 68
    iget-object v0, p1, Lcom/mobipocket/common/parser/LexingTables$SLexerInit;->entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->entries:[Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    .line 69
    return-void
.end method

.method public init_one_lex()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_state:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_statevalue:I

    .line 102
    return-void
.end method

.method public set_global_lex_state(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 78
    iget v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    .line 82
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_trans:[[B

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curtrans:[B

    .line 83
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_groups:[I

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget v0, v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgroups:I

    .line 84
    iget-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_grouptable:[[B

    iget v1, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curstate:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_curgrouptable:[B

    .line 86
    :cond_0
    return-void
.end method

.method public start_state()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/mobipocket/common/parser/EllieLexer;->m_startstate:I

    return v0
.end method
