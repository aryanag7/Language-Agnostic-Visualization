# Language Agnostic Visualization Web Application 📊 

<div align="center">

<img width="1406" alt="image" src="https://github.com/user-attachments/assets/68330110-99c6-4513-9f22-64ef615639b6" />


*A powerful web application for creating stunning visualizations in Python and R*

[![Made with Angular](https://img.shields.io/badge/Made%20with-Angular-DD0031?style=flat-square&logo=angular)](https://angular.io/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)](https://www.python.org/)
[![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org/)

</div>

## ✨ Overview

Transform your data into compelling visualizations with our language-agnostic platform. Whether you prefer Python or R, create interactive, static, or 3D visualizations with ease.

## 🛠️ Tech Stack

<table>
<tr>
<td>

### Frontend
- **Angular 18+** - Modern web framework
- **TypeScript** - Type-safe development
- **Custom Components**
  - Language Selector
  - Code Editor
  - Visualization Renderer
- **Responsive Design**

</td>
<td>

### Backend
- **Node.js + Express**
- **Python Environment**
  - `matplotlib`
  - `plotly`
- **R Integration**
  - `ggplot2`
  - `plotly`
  - `htmlwidgets`

</td>
</tr>
</table>

## 🎯 Key Features

- **Multi-Language Support**
  - Python & R integration
  - Extensible architecture
- **Visualization Types**
  - Static Images (PNG)
  - Interactive Charts (HTML)
  - 3D Visualizations
- **User Experience**
  - Real-time Preview
  - Download Options
  - Responsive Interface

## 🔍 Technical Challenges & Solutions

### 1. HTML Chart Rendering
> **Challenge**: Interactive HTML plots weren't rendering in Angular  
> **Solution**: Implemented secure HTML embedding using `DomSanitizer` and `iframe`

### 2. Script Execution Safety
> **Challenge**: Backend would crash or hang on invalid scripts 
> **Solution**:  Wrapped script execution in `try/catch` with detailed error handling and user feedback

### 3. R Plot Generation
> **Challenge**: Server restarts during R visualization generation  
> **Solution**: Configured nodemon to ignore the tmp/ folder using a nodemon.json file. This prevented auto-restarts caused by file writes in that directory

### 4. Responsive Design
> **Challenge**: UI inconsistencies across devices  
> **Solution**: Implemented fluid layouts with modern CSS

## 🌟 Current Status

The application successfully supports:

- ✅ Static Visualizations
- ✅ Interactive Plots
- ✅ 3D Visualizations
- ✅ Cross-Language Support

## 🚀 Future Roadmap

- [ ] Additional Language Support
  - D3.js
  - Julia
  - MATLAB
- [ ] Template Gallery
- [ ] Real-time Collaboration
- [ ] Enhanced Export Options



