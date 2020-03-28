import React, { useEffect, useState } from 'react'
import { withRouter } from 'react-router'
import { BrowserRouter as Router, Route, Link, Switch } from 'react-router-dom'

import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
import { getBlogDataAsync, getBlogCommentsDataAsync, addContentCommentsDataAsync } from '../../actions/blog/blog_Actions'


import Header from '../../components/Header'
import Banner from '../../components/Banner'
import Footer from '../../components/Footer'
import BlogRside from '../../components/blog/BlogRside'
import BlogRelatedPost from '../../components/blog/BlogRelatedPost'

import '../../style/BlogContent.scss'
import '../../image/image.png'
import RcViewer from '@hanyk/rc-viewer'




function BlogContent(props) {
  //拿資料
  const [blogData, setBlogData] = useState([])
  const [blogCommentsData, setBlogCommentsData] = useState([])
  //新增評論
  const [cotentComments,setCotentComments] = useState(null)

  const [error, setError] = useState(false)
  const [errorMessages, setErrorMessages] = useState([])


  const handleSubmit = e =>{
    let error = false
    let errorMessages = []

      if (!cotentComments) {
        error = true
        errorMessages.push('評論內容沒填')
      }

      const commentsData = { 
        cotentComments,
      }
    
      const commentsData_fd = new FormData()
      commentsData_fd.append('cotentComments', commentsData.cotentComments)
    
      props.addContentCommentsDataAsync(commentsData_fd, () => alert('成功新增'))
    
  }





  useEffect(() => {
    props.getBlogDataAsync()
    props.getBlogCommentsDataAsync()
    props.addContentCommentsDataAsync()
  }, [])
  // console.log(props.blogCommentsData)

  let relatedPostData = [];
  if(props.blogData.result && props.blogData.result.length){
    relatedPostData = [...props.blogData.result];
    relatedPostData.sort((_a,b)=>Math.random()-.5);
    relatedPostData = relatedPostData.slice(0,3);
  }

  
  return (
    <>
      <Header />
      {/* <!-- titlebar --> */}
      <div className="titlebarFix"></div>
      <div className="titlebar">
        <div className="container">
          <p>部落格</p>

              {props.blogData.result ? (props.blogData.result.map((value , index)=>{
              if( value.id==props.match.params.id)
              return (
          <ul key = {index}>
            <li>
              <Link to="/blog">首頁</Link>
            </li>
            <li>
              <Link to="">></Link>
            </li>
      
            <li>
              <Link to="">{value.categoryName}</Link>
            </li>
            <li>
              <Link to="">></Link>
            </li>
            <li>
              <Link to={'/blog/'+value.id}>{value.blogTitle}</Link>
            </li>
          </ul>
          )}
            )) : ''}

        </div>
      </div>

      <div className="container rao">

        {/* <!--blogContent--> */}
        <div className="row postContent">

          <div className=" col-md-8 " >
            {props.blogData.result ? (props.blogData.result.map((value , index)=>{
              if( value.id==props.match.params.id)
               return (
            <div>
                <figure className="postImg">
                  <img src={'http://localhost:5000/images/blogImg/'+ value.blogImages}
                  alt="image" />
                </figure>
              <div className="postTitle">
                  <h2>{value.blogTitle}</h2>
              </div>
              <div className="postNav mb-3 d-flex justify-content-between">
                <div className="author">
                  <Link to="">AUQA</Link> -<time>{value.created_at.substring(0, 10)}</time>
                </div>
                <div className="postTag">
                  <ul>
                    <li>
                      <Link to="">{value.categoryName}</Link>
                    </li>
                    <li>
                      <Link to="">
                        <i className="far fa-comment"> 0</i>
                      </Link>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="postBody">
                <hr align="left" />
                <p className="">
                {value.blogContent}
                </p>
              </div>
              <div className="postFooter">
                <div className="">
                  <h5 className="mb-3">標籤</h5>
                </div>
                <div className="justify-content-between d-flex">
                  <ul>
                    <li>
                      <Link to="#" className="rounded-lg">
                        {value.tagName1}
                      </Link>
                    </li>
                    <li>
                      <Link to="#" className="rounded-lg">
                      {value.tagName2}
                      </Link>
                    </li>
                  </ul>
                </div>
                <hr align="left" />
              </div>
            </div>
            )}
            )) : ''}
            <BlogRelatedPost blogData={props.blogData}/>
            <div className="comment mb-3">
                <h5>評論</h5>
            </div>
            {props.blogCommentsData.result ? props.blogCommentsData.result.map((value, index) => {
               return (
            <>
              <div className="commentContent ">
                <figure>
                  <img src="../../images/blog/newPost2.jpg"   alt="image"/>
                </figure>
                <div className="commmentBody p-2">
                  <div className="commentAuthor">
                    <Link to="">AUQA</Link>
                  </div>
                  <time>{value.created_at.substring(0, 16)}</time>
                  <div className="commmentbodyText">
                    <p>{value.content}
                    </p>
                  </div>
                </div>
              </div>
           </>
            )}
            ) : ''}
            <form name="cotentform" method="post">
            <div className="postComment">
              <div className="postcommentTitle">
                <h5>發表評論</h5>
              </div>
              <div className="postcommentBody">
                <input 
                                type="text"

                  name="cotentComments"
                  onChange={event => setCotentComments(event.target.value)}
                  className="col-md-12">
                </input>
              </div>
              <div className="d-flex justify-content-end">
                <button 
                className="badge badge-pill contentSend" 
                onClick={e => {
                e.preventDefault()
                handleSubmit()
              }}
                >
                  送出
                </button>
              </div>
            </div>
            </form>

          </div>
          <BlogRside blogData={props.blogData}/>
        </div>
      </div>
    </>
  )
}


const mapStateToProps = store => {
  return {
    blogData: store.blogReducer.blogData,
    blogCommentsData: store.blogReducer.blogCommentsData,
    addContentComments: store.blogReducer.addContentComments
  }
}

// 指示dispatch要綁定哪些action creators
const mapDispatchToProps = dispatch => {
  return bindActionCreators({ getBlogDataAsync, getBlogCommentsDataAsync, addContentCommentsDataAsync}, dispatch)
}
export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BlogContent))
// export default BlogContent
